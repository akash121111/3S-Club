class TimeWalletToMemberSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :member_subscriptions, :time_wallet, :float
  end
end
