class AddsignupActiveToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :signup_active, :boolean, :default => false
  	
  end
end
