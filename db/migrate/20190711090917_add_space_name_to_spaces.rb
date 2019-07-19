class AddSpaceNameToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :space_name, :string
  end
end
