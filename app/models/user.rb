class User < ApplicationRecord
    has_one:user_detail
    has_many:booking_records
    has_many:spaces
    has_many:user_addresses

	has_secure_password
	validates_presence_of   :password,:length => {:within => 3..15}, :message => 'Please Enter Your Password.',on: :create
	validates_confirmation_of :password
    #validates_presence_of :password, on: :create
    validates :email, :presence=>true, uniqueness:true
	before_create { generate_token(:auth_token)}
	def generate_token(column)
		begin
			self[column] = SecureRandom.urlsafe_base64
		end while User.exists?(column => self[column])
	end

	def send_password_reset
	   	generate_token(:password_reset_token)
	   	self.password_reset_sent_at= Time.zone.now
	   	save!
	   	UserMailer.password_reset(self).deliver
	   	
	   end   
	
end
 
