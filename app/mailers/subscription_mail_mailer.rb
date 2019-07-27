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
  def booking_message(space_id,user_id,booking_time, start_time, end_time, booking_date)
  
  #  @show = User.find_by(id: user_id)
  #  mail(to: @show.email, subject: 'Booking Confirmation')
  #  @owner = Space.find_by(space_id)
  #  @user_id = @owner.user_id
  #  @email = User.find_by(@user_id)
   mail(to: "akashkumar12111@gmail.com", subject: 'Booking Confirmation')
 end
  
end
