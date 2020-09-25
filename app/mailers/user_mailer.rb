class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/log_in'
    mail to: @user.email, subject: 'Welcome to My Awesome Site'
  end
end
