class SpaceAvailableDay < ApplicationRecord
    belongs_to:space
     def self.searchday(a)
        if a
            where([a+"= ?",true]).pluck(:space_id)

        else
            all
        end
    end  
end
