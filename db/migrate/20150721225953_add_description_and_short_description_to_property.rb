class AddDescriptionAndShortDescriptionToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :description, :text
    add_column :properties, :short_description, :text
  end
end
