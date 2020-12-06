class UsersController < ApplicationController

  before_action :require_authentication, :only => [:logout]

  def create
    allowed_params = params.require(:user).permit(:email, :password, :password_confirmation)

    user = User.create(allowed_params)
    if user.valid?
      user.save!
      session[:user_id] = user.id

      redirect_to start_lesson_path
    else
      flash[:signup_error] = user.errors.full_messages
      flash[:email] = allowed_params[:email]
      flash[:password] = allowed_params[:password]
      flash[:password_confirmation] = allowed_params[:password_confirmation]

      redirect_to signup_path
    end
  end

  def login
    flash[:redirect_from] = flash[:redirect_from] if flash[:redirect_from].present?
  end

  def authenticate
    allowed_params = params.permit([:email, :password])

    user = User.find_by_email(allowed_params[:email]).try(:authenticate, allowed_params[:password])

    if user.present?
      session[:user_id] = user.id

      if flash[:redirect_from].present?
        redirect_to flash[:redirect_from]
      else
        redirect_to history_path
      end
    else
      flash[:login_error] = "Sorry, your username or password do not match"
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
