class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string:Firstname
      t.string:Lastname
      t.string:Educationdetails
      t.string:Aboutuser
      t.string:City
      t.string:College
      t.string:Phonenumber
      t.string:Mobilenumber
      t.timestamps

    end
  end
end
