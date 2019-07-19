class MembershipPlan < ApplicationRecord

    has_many :member_subscriptions, optional: true
    belongs_to :space
end
