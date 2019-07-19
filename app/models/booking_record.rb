class BookingRecord <  ApplicationRecord
    belongs_to:user
    belongs_to:space

     def self.sear(a_data,b_data,c_data)
        
         if a_data && b_data && c_data
            where(["booking_date= ? AND (start_time < ? AND end_time > ?) ",a_data,c_data,b_data]).pluck(:space_id)

        else
            all
        end
    end  

end
