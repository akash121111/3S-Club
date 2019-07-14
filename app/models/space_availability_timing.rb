class SpaceAvailabilityTiming < ApplicationRecord
    belongs_to:day
    belongs_to:space

     def self.se(a,b)
        if a & b
            where(:space_id => a, :day_id => b)
           

        else
            all
        end
    end  
end
