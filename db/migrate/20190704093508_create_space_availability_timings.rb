class CreateSpaceAvailabilityTimings < ActiveRecord::Migration[5.2]
  def change
    create_table :space_availability_timings do |t|
      t.time:start_time
      t.time:end_time
      t.references:space, foreign_key: true
      t.references:user, foreign_key: true

      t.timestamps
    end
  end
end
