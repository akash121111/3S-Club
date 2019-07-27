class SubscriptionMailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mail_mailer.message_to.subject
  #
  def message_to(user,plan)
    @user = user
    @plan = plan
    # user_id = User.find_by(params[:user_id])
    # email = user_id.email
    @show = User.find(session[:user_id])
    mail(to: @show.email, subject: 'Subscription Confirmation')
  end
end
