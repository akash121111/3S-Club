class SpaceAvailableDay < ApplicationRecord
    belongs_to:space
     def self.search(searchday)
        if searchday
            where(["searchday = ?",true])

        else
            where(["searchday LIKE null"])  
        end
    end  
end
