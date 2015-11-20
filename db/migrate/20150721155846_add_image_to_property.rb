class AddImageToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :image_id, :integer
  end
end
