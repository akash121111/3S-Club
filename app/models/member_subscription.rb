class MemberSubscription < ApplicationRecord
    
    belongs_to :membership_plan , optional: true
    belongs_to :space
end