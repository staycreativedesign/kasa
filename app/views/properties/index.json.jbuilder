json.array!(@properties) do |property|
  json.extract! property, :id, :mls_listing_number, :mls_name, :mls_sources, :mls_date_added, :mls_date_modified, :street_number, :street_name, :unit_number, :city, :zip, :location, :full_address, :property_type, :last_update_description, :short_last_update_description, :status, :current_list_price, :sold_price, :sqft, :sqft_price, :lot_sqft, :year_built, :listing_office, :condition, :bedrooms, :half_bathrooms, :full_bathrooms, :favorited, :fake_favorited
  json.url property_url(property, format: :json)
end
