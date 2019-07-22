class RemoveAndAddMembershipPlansId < ActiveRecord::Migration[5.2]
  def change
     remove_column :member_subscriptions, :membership_plans_id, :integer
     add_reference :member_subscriptions, :membership_plan, foreign_key: true
  end
end
