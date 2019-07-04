class MemberVisitRecord < ActiveRecord::Migration[5.2]
  def change
    create_table :member_visit_record do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.references :user, foregion_key: true
      t.references :space, foregion_key: true

      t.timestamps
    end
  end
end
