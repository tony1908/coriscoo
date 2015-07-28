class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo
      t.integer :category_id
      t.text :description
      t.string :title

      t.timestamps null: false
    end
  end
end
