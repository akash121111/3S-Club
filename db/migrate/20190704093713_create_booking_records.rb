class CreateBookingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_records do |t|
      t.references:space, foreign_key: true
      t.references:user, foreign_key: true
      t.timestamps
    end
  end
end
