class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string:space_address
      t.string:size
      t.string:dimensions
      t.string:floor_number
      t.string:number_of_toilets
      t.string:nearby_landmark
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
