class Space < ActiveRecord::Migration[5.2]
  def change
    remove_column :space_availability_timings, :user_id
    add_reference :space_available_days, :user_id, foreign_key: true
end
