class CreateSpaceAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :space_addresses do |t|


<<<<<<< HEAD
       t.string :street
=======

      t.string :street
=======
       t.string :street
>>>>>>> 2bcff224429a259146eb6de66037d44f3bfebb59
=======
       t.string :street
>>>>>>> 541cfcb6a5c45fecfe57d36695eb3a086b7b7eb5
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
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
