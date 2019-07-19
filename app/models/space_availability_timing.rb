class SpaceAvailabilityTiming < ApplicationRecord
<<<<<<< HEAD
    belongs_to:day
    belongs_to:space

     def self.se(a_data,b_data,c_data)
        
         if a_data && b_data && c_data
            where(["day_id= ? AND start_time<= ? AND end_time>= ? ",a_data,b_data,c_data]).pluck(:space_id)
=======
    belongs_to:user
    belongs_to:space

     def self.se(a,b)
        if a & b
            where(:space_id => a, :day_id => b)
           
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36

        else
            all
        end
    end  
end
