class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :pincode
      t.string :state
      t.string :country
      t.references :user_address_type, foreign_key: true
      t.references :user , foreign_key: true
      t.timestamps
    end
  end
end
