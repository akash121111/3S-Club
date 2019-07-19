class RemoveHooursLeftFromMemberSubscription < ActiveRecord::Migration[5.2]
  def change
    remove_column :member_subscriptions, :hours_left, :time
  end
end
