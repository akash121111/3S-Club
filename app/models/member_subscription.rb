class MemberSubscription < ApplicationRecord
    belongs_to :membership_plan, optional: true
<<<<<<< HEAD
=======
    belongs_to :space
    belongs_to :user
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    
end