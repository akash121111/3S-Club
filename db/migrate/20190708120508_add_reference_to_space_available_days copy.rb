class AddReferenceToSpaceAvailableDays < ActiveRecord::Migration[5.2]
  def change
    add_reference :space_available_days, :space, foreign_key: true
  end
end
