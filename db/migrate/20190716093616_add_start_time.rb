class AddStartTime < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_records, :booking_time, :float
    remove_column :booking_records, :start_time, :time
    remove_column :booking_records, :end_time, :time
  end
end
