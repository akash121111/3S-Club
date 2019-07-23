class SpaceAvailableDay < ApplicationRecord
    belongs_to:space
     def self.searchday(a)
        if a
            where([a+"= ?",true]).pluck(:space_id)

        else
            all
        end
    end  

    validates :monday, inclusion: { in: [true, false] },optional: true
    validates :tuesday, inclusion: { in: [true, false] },optional: true
    validates :wednesday, inclusion: { in: [true, false] },optional: true
    validates :thursday, inclusion: { in: [true, false] },optional: true
    validates :friday, inclusion: { in: [true, false] },optional: true
    validates :saturday, inclusion: { in: [true, false] },optional: true
    validates :sunday, inclusion: { in: [true, false] },optional: true
end
