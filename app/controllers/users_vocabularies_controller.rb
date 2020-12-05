class UsersVocabulariesController < ApplicationController

  before_action :require_authentication

  def index
    @users_vocabularies = current_user.users_vocabularies
  end

  def view_card
    vocabularies = Vocabulary.where(:level => params[:jlpt_level]).ids
    session[:viewed_cards] ||= []

    vocabulary_id = (vocabularies - session[:viewed_cards]).sample

    session[:viewed_cards] << vocabulary_id

    @vocabulary = Vocabulary.find(vocabulary_id)
    @alternate_vocabulary = Vocabulary.where(:id => (vocabularies - [vocabulary_id]).sample(4))
  end

  def match_card
    @vocabulary = Vocabulary.find(params[:vocabulary_id])
    @user_vocabulary =
      UsersVocabularies.find_or_initialize_by(:user => current_user, :vocabulary => @vocabulary)
    @correct = params[:selected_vocabulary_id] == params[:vocabulary_id]

    @user_vocabulary.correct += 1 if @correct
    @user_vocabulary.incorrect += 1 if !@correct
    @user_vocabulary.save!

    @finished =
      params[:lesson_length].present? && params[:lesson_length] == session[:viewed_cards].length
  end

  def history

  end

end
