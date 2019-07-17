class DeviseMailer < Devise::Mailer
  default from: "from@example.com"

 def confirmation_instructions(user)
   @user = user
   mail to: user.email
 end
end