class Space < ApplicationRecord
    belongs_to:user
    has_one:space_location
    has_many:booking_record
    has_many_attached:images
    has_one:space_address
end
