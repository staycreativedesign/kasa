class AddGarageSizeToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :garage_size, :integer
  end
end
