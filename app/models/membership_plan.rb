class MembershipPlan < ApplicationRecord

    has_many :member_subscriptions
    belongs_to :space
    belongs_to :user
end