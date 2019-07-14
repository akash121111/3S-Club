class Space < ApplicationRecord
    belongs_to:user
    has_one:space_address
    has_many:booking_record
    has_many_attached:images
    has_one:space_address
    has_many:space_availability_timings
    has_one:space_available_days

end
