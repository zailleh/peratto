class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(:id => cookies.signed[:user_id]) if cookies.signed[:user_id].present?
  end

  private

  def store_login(user_id)
    cookies.signed[:user_id] = { value: user_id, expires: 1.month }
  end

  def remove_login
    cookies.signed[:user_id] = nil
  end

  def require_authentication
    unless current_user.present?
      flash[:redirect_from] = request.original_url
      flash[:login_error] = "Not logged in"
      redirect_to login_path
    end
  end
end
