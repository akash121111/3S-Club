class User < ApplicationRecord
    has_secure_password
    belongs_to :user_types
    has_one :user_detail
    has_many :spaces
end
