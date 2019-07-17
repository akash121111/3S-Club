class DeviseMailerPreview < ActionMailer::Preview

   def confirmation_instructions
     user = User.first
     DeviseMailer.confirmation_instructions(user)
   end
end