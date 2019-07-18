class ChangeMembershipS < ActiveRecord::Migration[5.2]
  def change
     rename_column :member_subscriptions, :users_id, :user_id
      rename_column :member_subscriptions, :spaces_id, :space_id
  end
end
