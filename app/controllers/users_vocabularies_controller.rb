class UsersVocabulariesController < ApplicationController

  before_action :require_authentication

  def index
    @users_vocabularies = current_user.users_vocabularies
  end

  def view_card
    if params[:start]
      session[:viewed_cards] = []
    end

    if session[:viewed_cards].nil?
      redirect_to start_lesson_path
    elsif flash[:check_answer_data].present?
      check_answer

      render :check_answer
    else
      vocabularies = Vocabulary.where(:level => params[:jlpt_level]).ids
      vocabulary_id = (vocabularies - session[:viewed_cards]).sample

      session[:viewed_cards] << vocabulary_id

      @vocabulary = Vocabulary.find(vocabulary_id)
      alternate_vocabulary = Vocabulary.where(:id => (vocabularies - [vocabulary_id]).sample(4))

      @answers = ([@vocabulary] + alternate_vocabulary).shuffle
      flash[:answer_ids] = @answers.map(&:id)
    end
  end

  def match_card
    flash[:check_answer_data] = {
      :vocabulary_id => params[:vocabulary_id],
      :answer_ids => flash[:answer_ids],
      :selected_vocabulary_id => params[:selected_vocabulary_id]
    }

    redirect_to lesson_path(params.permit(:lesson_length, :jlpt_level))
  end

  def history
    @user_vocabularies = UsersVocabulary.includes(:vocabulary).where(:user => current_user)
  end

  private

  def check_answer
    data = flash[:check_answer_data].with_indifferent_access

    @vocabulary = Vocabulary.find(data[:vocabulary_id])
    @answers = Vocabulary.find(data[:answer_ids])
    @selected_vocabulary_id =  data[:selected_vocabulary_id].to_i
    @user_vocabulary =
      UsersVocabulary.find_or_initialize_by(:user => current_user, :vocabulary => @vocabulary)
    @correct = @selected_vocabulary_id == @vocabulary.id

    @user_vocabulary.correct += 1 if @correct
    @user_vocabulary.incorrect += 1 if !@correct
    @user_vocabulary.save!

    @finished =
      params[:lesson_length].present? && session[:viewed_cards].length >= params[:lesson_length].to_i
  end

end
