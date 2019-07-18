class Space < ApplicationRecord
    belongs_to:user
    has_one:space_location
    has_many:booking_records
    has_many_attached:images
    has_one:space_address
    has_one:member_subscription
end
