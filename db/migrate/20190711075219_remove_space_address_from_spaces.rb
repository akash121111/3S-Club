class RemoveSpaceAddressFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :space_address, :string
  end
end
