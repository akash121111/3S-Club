class RemoveUserIdFromSpaceAvailabilityTimings < ActiveRecord::Migration[5.2]
  def change
    remove_column :space_availability_timings, :user_id, :integer
  end
end
