class Space < ApplicationRecord
    belongs_to:user
<<<<<<< HEAD
    has_one:space_address
    has_many:booking_records
    has_many_attached:images
    has_one:space_address
    has_many:space_availability_timings
    has_one:space_available_day

=======
    has_one:space_location
    has_many:booking_records
    has_many_attached:images
    has_one:space_address
    has_one:member_subscription
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
end
