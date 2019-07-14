class RemoveFloorNumberFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :floor_number, :string
    remove_column :spaces, :number_of_toilets, :string
  end
end
