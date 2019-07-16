class AddStartTime < ActiveRecord::Migration[5.2]
  def change
     remove_column :booking_records, :booking_time, :float
     add_column :booking_records, :start_time, :time
     add_column :booking_records, :end_time, :time
  end
end
