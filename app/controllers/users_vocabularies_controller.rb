class UsersVocabulariesController < ApplicationController

  before_action :require_authentication

  def start_lesson
    session[:viewed_cards] = []
    session.delete(:lesson_length)
  end

  def view_card
    if session[:viewed_cards].nil?
      redirect_to start_lesson_path
    elsif flash.to_h.dig(:check_answer_data, :vocabulary_id).present?
      check_answer

      render :check_answer
    else
      session[:lesson_length] = params[:lesson_length] if params[:lesson_length].present?

      if params[:lesson_length].to_i == 0
        params.extract!(:lesson_length)
        session.delete(:lesson_length)
      end


      vocabularies = Vocabulary.where(:level => params[:jlpt_level])
      vocabularies = vocabularies.where.not(:kanji => [nil, ""]) if params[:difficulty] == "hard"
      vocabularies = vocabularies.where.not(:id => session[:viewed_cards]) if session[:viewed_cards].present?
      vocabularies =
        case params[:mode]
        when "review"
          vocabularies
            .joins(:users_vocabularies)
            .where(:users_vocabularies => { :user_id => current_user.id })
        when "mistakes"
          vocabularies
           .joins(:users_vocabularies)
            .where(:users_vocabularies => { :user_id => current_user.id })
            .where('"users_vocabularies"."correct" - "users_vocabularies"."incorrect" < 0')
        when "new"
          vocabularies
            .where.not(
              :id => vocabularies
                .joins(:users_vocabularies)
                .where(:users_vocabularies => { :user_id => current_user.id })
            )
        else vocabularies
        end

      vocabulary_ids = vocabularies.ids
      if vocabulary_ids.blank?
        message =
          case params[:mode]
          when "mistakes" then "mistakes to review"
          when "new" then "new vocabulary to learn"
          else "to review"
          end

        flash[:lesson_message] = "There are no more #{message} in JLPT #{params[:jlpt_level]}"
        return redirect_to start_lesson_path
      end

      @finished = vocabulary_ids.length == 1

      vocabulary_id = vocabularies.ids.sample
      session[:viewed_cards] << vocabulary_id
      @vocabulary = Vocabulary.find(vocabulary_id)

      alternate_vocabulary =
        Vocabulary
          .where(:level => params[:jlpt_level])
          .where.not(:id => vocabulary_id)
          .where.not(:hiragana => vocabulary.hiragana, :meaning => vocabulary.meaning)
          .sample(4)

      @answers = ([@vocabulary] + alternate_vocabulary).shuffle
    end
  end

  def match_card
    check_answer
    render :json => { correct: @correct, finished: @finished }
  end

  def history
    @vocabulary_counts = Vocabulary.counts_by_level
    @user_vocabularies_counts = UsersVocabulary.counts_by_level(current_user)
  end

  private

  def check_answer
    @vocabulary = Vocabulary.find(params[:vocabulary_id])
    @selected_vocabulary_id =  params[:selected_vocabulary_id].to_i
    @user_vocabulary =
      UsersVocabulary.find_or_initialize_by(:user => current_user, :vocabulary => @vocabulary)
    @correct = @selected_vocabulary_id == @vocabulary.id

    @user_vocabulary.correct += 1 if @correct
    @user_vocabulary.incorrect += 1 if !@correct
    @user_vocabulary.save!

    @finished =
      session[:lesson_length].present? && session[:viewed_cards].length >= session[:lesson_length].to_i
  end

end
