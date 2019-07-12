class SpaceAddress < ApplicationRecord
    belongs_to:space
     def self.search(search)
        if search
            where(["city LIKE ?","%#{search}%"])

        else
           all    
        end
    end    

end
