class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by_email(params[:email])

    if u.present? && u.authenticate(params[:passord])
      session[:users_id] = u.id
      redirect_to users_url, notice: "Sign in Successful"
    else
      redirect_to new_session_url, notice: "Sorry, you do not have permission."
    end
  end

  def destroy
    reset_session
    redirect_to users_url, notice: 'Sign out Successful'
  end
end
