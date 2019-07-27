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
    mail(to: "akashkumar12111@gmail.com", subject: 'Subscription Confirmation')
  end
  
end
