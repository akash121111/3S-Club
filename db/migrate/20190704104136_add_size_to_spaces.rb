class AddSizeToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :size, :float
  end
end
