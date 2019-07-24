class SpaceAvailableDay < ApplicationRecord
    belongs_to:space
     def self.searchday(a)
        if a
            where([a+"= ?",true]).pluck(:space_id)

        else
            all
        end
    end  

    validates :monday, inclusion: { in: [true, false] }
    validates :tuesday, inclusion: { in: [true, false] }
    validates :wednesday, inclusion: { in: [true, false] }
    validates :thursday, inclusion: { in: [true, false] }
    validates :friday, inclusion: { in: [true, false] }
    validates :saturday, inclusion: { in: [true, false] }
    validates :sunday, inclusion: { in: [true, false] }
end
