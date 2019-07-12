class CreateSpaceAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :space_addresses do |t|


      t.string :street
      t.string :city
      t.string :pincode
      t.string :state
      t.float :latitude
      t.float :longitude
       t.references :space, foreign_key: true
    
      t.timestamps
    end
  end
end
