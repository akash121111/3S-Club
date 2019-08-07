class ChangeStringToTime < ActiveRecord::Migration[5.2]
  def change
     remove_column :booking_records, :booking_date
     add_column :booking_records, :booking_date, :date

  end
end
