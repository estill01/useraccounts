class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user.nil?
      email = User.find_by_username(params[:email]).email   # hack to enable users to sign in with their username; username in params[:email]
      user = login(email, params[:password], params[:remember_me])
    end

    if user
      redirect_back_or_to user_path(user), :notice => "Welcome back to Agendo"
    else
      flash.now.alert = "Error logging in. Please try again."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out"
  end

end
