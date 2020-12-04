class UsersVocabulariesController < ApplicationController

  before_action :require_authentication

  def index
    @users_vocabularies = current_user.users_vocabularies
  end

  def check_answer
    # TODO: Check answer logic to find_or_initialize users_vocabulary and increment correct/incorrect
  end

end
