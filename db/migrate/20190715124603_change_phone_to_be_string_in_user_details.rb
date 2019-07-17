class ChangePhoneToBeStringInUserDetails < ActiveRecord::Migration[5.2]
  def change
  	  change_column :user_details, :mobile_number, :string
  	  change_column :user_details, :phone_number, :string

  end
end
