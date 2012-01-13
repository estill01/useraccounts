class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user), :notice => "Welcome to #{BRAND}"
    else
      render :new, :error => "Something went wrong. Please try again."
    end
  end

end
