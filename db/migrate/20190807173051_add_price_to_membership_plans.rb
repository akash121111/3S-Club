class AddPriceToMembershipPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :membership_plans, :price, :float, :limit=>53
  end
end
