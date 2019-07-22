class Space < ApplicationRecord
    belongs_to:user
    has_one:space_address
    has_many:booking_records
    has_many_attached:images
    has_one:space_address
    has_many:space_availability_timings
    has_one:space_available_day

    validates_presence_of :space_name, :message => "Space Name can't be empty"
    validates_format_of :space_name, :with => /^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$/ ,:multiline => true,:message => "Space Name is Wrong"
    validates_format_of :dimensions, :with => /^\d+(\.\d+)?x\d+(\.\d+)?$/ ,:multiline => true,:message => "Dimensions must be like 200*400  is Wrong"
    validates :size,length:{in: 1..7 }, :numericality=> { message: "%{value} seems wrong for Space size",only_integer: true ,:greater_than_or_equal_to => 0 }
    validates :floor_number,length:{in: 1..2 }, :numericality=> { message: "%{value} seems wrong for Floor Number",only_integer: true ,:greater_than_or_equal_to => 0 }
    validates :number_of_toilets,length:{in: 1..2 }, :numericality=> { message: "%{value} seems wrong for Number Of Toilets",only_integer: true,:greater_than_or_equal_to => 0  }
    validates_format_of :nearby_landmark, :with => /^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$/ ,:multiline => true,:message => "Nearby Landmark is Wrong"

end
