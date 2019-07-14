class RemoveSizeFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :size, :string
  end
end
