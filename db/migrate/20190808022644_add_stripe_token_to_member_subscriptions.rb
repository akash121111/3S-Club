class AddStripeTokenToMemberSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column:member_subscriptions,:stripe_token,:string
  end
end
