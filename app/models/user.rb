class User < ApplicationRecord
    has_one:user_detail
    has_many:booking_records
    has_many:spaces
	has_many:user_addresses
	has_many:membership_plans
	has_many:messages
	has_many:conversations, foreign_key: :sender_id

	has_secure_password
	validates_presence_of :password,:length => {:within => 3..15 , :message => 'Please Enter Your Password.'},on: :create
	validates_confirmation_of :password
    #validates_presence_of :password, on: :create
    validates :email,:presence => {:message => "Email can't be blank."},:uniqueness => {:message => "Email already exists."}
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
	end   
	

	def send_signup_email
	   	generate_token(:auth_token)
	   	save!
	end


	def email_activate
    self.signup_active = true
    self.auth_token = nil
    save!(:validate => false)
	end  

	private
	def confirmation_token
     	if self.auth_token.blank?
        	self.auth_token = SecureRandom.urlsafe_base64.to_s
      	end
    end   
	
end
 
