class RemoveSizeFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :floor_number, :string
  end
end
