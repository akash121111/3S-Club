class AddReferenceToSpaceAvailabilityTimings < ActiveRecord::Migration[5.2]
  def change
    add_reference :space_availability_timings, :day, foreign_key: true
  end
end
