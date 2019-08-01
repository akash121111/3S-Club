class UserAddress < ApplicationRecord
    belongs_to :user
    belongs_to :user_address_type

    validates_format_of :address_line_1, :with => /^[a-zA-Z0-9,. ]*$/ ,:multiline => true,:message => "%{value} seems wrong for address", :allow_blank => true
    validates_format_of :address_line_2, :with => /^[a-zA-Z0-9,. ]*$/ ,:multiline => true,:message => "%{value} seems wrong for address", :allow_blank => true
    validates :pincode,length:{in: 1..7 }, :numericality=> { message: "%{value} seems wrong for Space size",only_integer: true ,:greater_than_or_equal_to => 0 }, :allow_blank => true
    validates_format_of :city, :with => /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/ ,:multiline => true,:message => "City Name must not contain Digits", :allow_blank => true
    validates_format_of :state, :with => /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/ ,:multiline => true,:message => "State Name must not contain Digits", :allow_blank => true
    validates_format_of :country, :with => /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/ ,:multiline => true,:message => "Country Name must not contain Digits", :allow_blank => true

end
