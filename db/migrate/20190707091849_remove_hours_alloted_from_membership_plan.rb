class RemoveHoursAllotedFromMembershipPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :membership_plans, :hours_alloted, :time
  end
end
