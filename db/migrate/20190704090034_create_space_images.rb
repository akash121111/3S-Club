class CreateSpaceImages < ActiveRecord::Migration[5.2]
  def change
    create_table :space_images do |t|
      t.binary:image, limit: 10.megabyte
      t.references:space, foreign_key: true

      t.timestamps
    end
  end
end
