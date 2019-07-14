class AddHouseNumberToSpaceAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :space_addresses, :house_number, :string
  end
end
