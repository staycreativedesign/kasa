class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :mls_listing_number
      t.string :mls_name
      t.string :mls_sources
      t.date :mls_date_added
      t.date :mls_date_modified
      t.integer :street_number
      t.string :street_name
      t.string :unit_number
      t.string :city
      t.integer :zip
      t.string :location
      t.string :full_address
      t.string :property_type
      t.text :last_update_description
      t.text :short_last_update_description
      t.string :status
      t.decimal :current_list_price
      t.decimal :sold_price
      t.decimal :sqft
      t.decimal :sqft_price
      t.decimal :lot_sqft
      t.integer :year_built
      t.string :listing_office
      t.string :condition
      t.integer :bedrooms
      t.decimal :half_bathrooms
      t.integer :full_bathrooms
      t.integer :favorited
      t.integer :fake_favorited

      t.timestamps null: false
    end
    # add_index :properties, :mls_listing_number, unique: true
    add_index :properties, :full_address, unique: true
  end
end
