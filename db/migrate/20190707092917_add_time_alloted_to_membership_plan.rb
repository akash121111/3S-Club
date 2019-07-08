class AddTimeAllotedToMembershipPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :membership_plans, :time_alloted, :float
  end
end
