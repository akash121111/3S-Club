class MemberSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :member_subscription do |t|
      t.references :membership_plan, foregion_key: true
      t.references :user, foregion_key: true
      t.references :space, foregion_key: true
      t.time :hours_left

      t.timestamps
    end
  end
end
