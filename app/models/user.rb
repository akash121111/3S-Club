class User < ApplicationRecord
    has_one:user_detail
    has_many:booking_records
    has_many:spaces
    has_many:member_subscriptions
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
  validates :email, uniqueness: true, presence: true
	
end
