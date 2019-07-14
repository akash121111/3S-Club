class CreateSpaceLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :space_locations do |t|
      t.float:latitude
      t.float:longitude
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
