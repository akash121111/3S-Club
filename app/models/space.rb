class Space < ApplicationRecord
    belongs_to:user
    has_one:space_location
    has_many_attached:images
end
