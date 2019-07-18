class AddDeletedAtToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :deleted_at, :timestamp
  end
end
