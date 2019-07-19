class SubscriptionMailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mail_mailer.message_to.subject
  #
  def message_to(user,plan)
    @user = user
    @plan = plan
    mail(to: "abhishekjakhmolaabbu@gmail.com", subject: 'Subscription Confirmation')
  end
end
