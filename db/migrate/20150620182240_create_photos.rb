class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, index: true, foreign_key: true
      t.string :thumbnail_url
      t.string :full_url
      t.string :original_url

      t.timestamps null: false
    end
  end
end
