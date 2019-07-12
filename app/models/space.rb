class Space < ApplicationRecord
    belongs_to:user
    has_many:space_image
    has_one:space_location
    has_many:booking_record
end
