class AddUserToPayment < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :user_id, foreign_key: true
  end
end
