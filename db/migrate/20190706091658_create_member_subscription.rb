class CreateMemberSubscription < ActiveRecord::Migration[5.2]
  def change
    create_table :member_subscriptions do |t|
      t.references :membership_plans, foregion_key: true
      t.references :users, foregion_key: true
      t.references :spaces, foregion_key: true
      t.time :hours_left

      t.timestamps
    end
  end
end
