class CreateUserDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :user_details do |t|
      t.string :fist_name
      t.string :last_name
      t.string :education_details
      t.string :about_user
      t.string :city
      t.string :college
      t.integer :phone_number
      t.integer :mobile_number
      t.references :user , foreign_key: true
      
      t.timestamps
    end
  end
end
