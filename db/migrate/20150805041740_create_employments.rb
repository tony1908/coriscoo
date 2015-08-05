class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :name
      t.string :pdf

      t.timestamps null: false
    end
  end
end
