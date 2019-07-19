class ChangeUserIdToDayid < ActiveRecord::Migration[5.2]
  def change
    rename_column :space_availability_timings, :user_id, :day_id
  end
end
