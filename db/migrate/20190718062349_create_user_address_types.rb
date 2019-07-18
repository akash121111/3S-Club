class CreateUserAddressTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_address_types do |t|
      t.string :address_type
      t.timestamps
    end
  end
end
