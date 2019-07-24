class UserMailer < ApplicationMailer
default :from => '3SClub@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
  #send a resetpwd email to the user
    @user = user
    mail :to =>@user.email, :subject => "Password Reset"
  end

  def signup_email(user)
    @user = user
    mail :to => @user.email, :subject => 'Sign Up Confirmation'
  end

end
