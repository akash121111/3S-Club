class User < ApplicationRecord
    has_one:user_detail
    has_many:booking_record
    has_many:spaces
    has_many:user_addresses

	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
validates :email, uniqueness: true, presence: true
	
end
