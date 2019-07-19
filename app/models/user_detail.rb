class UserDetail < ApplicationRecord
    belongs_to:user

    validates :phone_number,   :presence => {:message => 'hello world, bad operation!'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }


    
    validates :education_details, :about_user, :city, :college, presence: true 
    validates :phone_number, :mobile_number, presence: true 
end
