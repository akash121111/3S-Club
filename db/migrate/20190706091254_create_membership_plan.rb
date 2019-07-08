class CreateMembershipPlan < ActiveRecord::Migration[5.2]
  def change
    create_table :membership_plans do |t|
      t.string :plan_name
      t.time :hours_alloted

      t.timestamps
    end
  end
end
