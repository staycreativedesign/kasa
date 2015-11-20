class AddHasGargageToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :has_garage, :boolean
  end
end
