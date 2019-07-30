class RemoveAllSpaceIdFromMembership < ActiveRecord::Migration[5.2]
  def change
     remove_column :member_subscriptions, :space_id
     
  end
end
