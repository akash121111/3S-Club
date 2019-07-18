class AddStartEndDateBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_records, :start_time, :time
    add_column :booking_records, :end_time, :time
     add_column :booking_records, :booking_date, :time
    
  end
end
