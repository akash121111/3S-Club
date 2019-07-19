class CreateSpaceAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :space_addresses do |t|


       t.string :street
=======
       t.string :street
>>>>>>> 784b6216f3837787a7952bb32dcb26c04850f7d8
=======
       t.string :street
>>>>>>> 4e0934084d2a8241dee169af010d39c991ac5313
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
