class User < ApplicationRecord
	has_secure_password
	#validation_confirmation_of :password
validates_presence_of :password, on: :create
validates :email,uniqueness: true, presence: true
end
private
def confirmation_token
      if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
      end
    end