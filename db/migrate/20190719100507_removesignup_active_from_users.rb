class RemovesignupActiveFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :signup_active
  end
end
