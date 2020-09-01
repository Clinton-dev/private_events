class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.authenticate(params[:name])
    if user && user.name 
      session[:user_id] = user.id
      redirect_to user_path(user.id), :notice => "you are logged in!!"
    else
      flash.now.alert = "user is not in the db"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "User is logged out"
  end
end
