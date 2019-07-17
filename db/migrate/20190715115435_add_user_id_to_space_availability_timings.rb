class AddUserIdToSpaceAvailabilityTimings < ActiveRecord::Migration[5.2]
  def change
    add_column :space_availability_timings, :user_id, :bigint
  end
end
