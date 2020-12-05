class ApplicationController < ActionController::Base

  attr_reader :current_user

  private

  def require_authentication
    @current_user = User.find_by(:id => session[:user_id]) if session[:user_id].present?

    unless @current_user.present?
      flash[:redirect_from] = request.original_url
      flash[:login_error] = "Not logged in"
      redirect_to login_path
    end
  end
end
