class AddSignupEmailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :signup_token, :string
    add_column :users, :signup_active, :boolean, :default => false
    add_column :users, :signup_at, :datetime
  end
end
