class DropMemberVisitRecord < ActiveRecord::Migration[5.2]
  def change
    drop_table :member_visit_records
  end
end
