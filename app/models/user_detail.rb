class UserDetail < ApplicationRecord
    belongs_to:user
    validates :first_name, :last_name, :education_details,
    :about_user, :city,:college,:phone_number,:mobile_number, presence: true 
  
end
