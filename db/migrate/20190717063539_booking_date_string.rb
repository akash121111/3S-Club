class BookingDateString < ActiveRecord::Migration[5.2]
  def change
    change_column :booking_records, :booking_date, :string

  end
end
