class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later
      redirect_to log_in_url, :notice => "User succefully created"
    else
      render :new
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
