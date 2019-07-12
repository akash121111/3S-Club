class CreateSearchings < ActiveRecord::Migration[5.2]
  def change
    create_table :searchings do |t|

      t.timestamps
    end
  end
end
