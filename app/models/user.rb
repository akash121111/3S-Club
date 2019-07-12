class User < ApplicationRecord
    has_one:user_detail
    has_many:booking_record
    has_many:spaces

end
