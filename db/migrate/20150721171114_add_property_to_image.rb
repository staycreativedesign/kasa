class AddPropertyToImage < ActiveRecord::Migration
  def change
    add_column :images, :property_id, :integer
  end
end
