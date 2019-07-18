class UserAddress < ApplicationRecord
    belongs_to :user
    belongs_to :user_address_type
end
