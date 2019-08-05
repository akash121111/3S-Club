class AddEmailToPayment < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :email, foreign_key: true
  end
end
