class UserAddress < ApplicationRecord
    belongs_to :user
    belongs_to :user_address_type

    validates_format_of :address_line_1, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "%{value} seems wrong for address", :allow_blank => true
    validates_format_of :address_line_2, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "%{value} seems wrong for address", :allow_blank => true
    validates :pincode,length:{in: 1..7 }, :numericality=> { message: "%{value} seems wrong for Space size",only_integer: true ,:greater_than_or_equal_to => 0 }, :allow_blank => true
    validates_format_of :city, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "City Name must not contain Digits", :allow_blank => true
    validates_format_of :state, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "State Name must not contain Digits", :allow_blank => true
    validates_format_of :country, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "Country Name must not contain Digits", :allow_blank => true

end
