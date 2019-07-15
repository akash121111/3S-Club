class User < ApplicationRecord
    has_one:user_detail
    has_many:booking_record
    has_many:spaces

	has_secure_password
	
    validates_presence_of   :password,:length => {:within => 3..15}, :message => 'Please Enter Your Password.',on: :create

	validates_confirmation_of :password,:message => 'Please Enter Your Password.',on: :create
	
    #validates_presence_of :password, on: :create
    validates :email, :presence=>true, uniqueness:true, :message => ' email already exist.'
   
	
end
