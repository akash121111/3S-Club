class User < ApplicationRecord
	has_secure_password
	#validates_confirmation_of :password
	validates_presence_of :password, on: :create
validates :email, uniqueness: true, presence: true
	
end
