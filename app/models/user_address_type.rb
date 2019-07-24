class UserAddressType < ApplicationRecord
    has_many :user_addresses

    validates_format_of :address_type, :with => /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/ ,:multiline => true,:message => "%{value} seems wrong for address", :allow_blank => true

end
