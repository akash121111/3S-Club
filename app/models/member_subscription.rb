class MemberSubscription < ApplicationRecord
    
    belongs_to :membership_plan 
    belongs_to :space
end