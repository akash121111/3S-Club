class AddFloorNumberToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :floor_number, :integer
    add_column :spaces, :number_of_toilets, :integer
  end
end
