class SpaceAddress < ApplicationRecord
    belongs_to:space
<<<<<<< HEAD
    def self.search(search)
=======
     def self.search(search)
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59
        if search
            where(["city LIKE ?","%#{search}%"])

        else
<<<<<<< HEAD
            all
        end
    end  
=======
           all    
        end
    end    
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59

end
