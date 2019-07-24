class SpaceAddress < ApplicationRecord
    belongs_to:space
    def self.search(search)
        if search
            where(["city LIKE ?","%#{search}%"])

        else
            all
        end
    end  
    
    validates_format_of :house_number, :with => /^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$/ ,:multiline => true,:message => "House Number is Wrong", :allow_blank => true
    validates_format_of :street, :with => /^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$/ ,:multiline => true,:message => "Street Name is Wrong", :allow_blank => true
    validates :pincode,length:{in: 1..7 }, :numericality=> { message: "%{value} seems wrong for Space size",only_integer: true ,:greater_than_or_equal_to => 0 }, :allow_blank => true
    validates_format_of :city, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "City Name must not contain Digits", :allow_blank => true
    validates_format_of :state, :with => /^[A-Za-z ]*[A-Za-z ][A-Za-z ]*$/ ,:multiline => true,:message => "State Name must not contain Digits", :allow_blank => true


end
