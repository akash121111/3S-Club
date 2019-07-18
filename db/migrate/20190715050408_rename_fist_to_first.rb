class RenameFistToFirst < ActiveRecord::Migration[5.2]
  def change
  	rename_column :user_details, :fist_name, :first_name
  end
end
