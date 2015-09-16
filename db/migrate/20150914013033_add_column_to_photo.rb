class AddColumnToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :kind_id, :integer
  end
end
