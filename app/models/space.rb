class Space < ApplicationRecord
    belongs_to:user
    has_many:booking_records
    has_many_attached:images
    has_one:space_address
    has_many:space_availability_timings
    has_one:space_available_day
    has_many:member_subscriptions

    validates_presence_of :space_name, :message => "Space Name can't be empty",on: :create
    validates_format_of :space_name, :with => /^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$/ ,:multiline => true,:message => "Space Name is Wrong", :allow_blank => true
    validates_format_of :dimensions, :with => /^\d+(\.\d+)?x\d+(\.\d+)?$/ ,:multiline => true,:message => "Dimensions must be like 200*400 ", :allow_blank => true
    validates_format_of :size,length:{in: 1..7 }, :with => /^\d*\.?\d*$/,:message=> "Wrong Input", :allow_blank => true,:multiline => true
    validates :floor_number,length:{in: 1..2 }, :numericality=> { message: "%{value} seems wrong for Floor Number",only_integer: true ,:greater_than_or_equal_to => 0 }, :allow_blank => true
    validates :number_of_toilets,length:{in: 1..2 }, :numericality=> { message: "%{value} seems wrong for Number Of Toilets",only_integer: true,:greater_than_or_equal_to => 0  }, :allow_blank => true
    validates_format_of :nearby_landmark, :with => /^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$/ ,:multiline => true,:message => "Nearby Landmark is Wrong", :allow_blank => true

end
