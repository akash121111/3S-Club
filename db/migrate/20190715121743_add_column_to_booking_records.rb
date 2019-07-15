class AddColumnToBookingRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_records, :booking_time, :float
  end
end
