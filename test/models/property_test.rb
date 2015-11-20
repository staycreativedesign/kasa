require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: properties
#
#  id                            :integer          not null, primary key
#  mls_listing_number            :string
#  mls_name                      :string
#  mls_sources                   :string
#  mls_date_added                :date
#  mls_date_modified             :date
#  street_number                 :integer
#  street_name                   :string
#  unit_number                   :string
#  city                          :string
#  zip                           :integer
#  location                      :string
#  full_address                  :string
#  property_type                 :string
#  last_update_description       :text
#  short_last_update_description :text
#  status                        :string
#  current_list_price            :decimal(, )
#  sold_price                    :decimal(, )
#  sqft                          :decimal(, )
#  sqft_price                    :decimal(, )
#  lot_sqft                      :decimal(, )
#  year_built                    :integer
#  listing_office                :string
#  condition                     :string
#  bedrooms                      :integer
#  half_bathrooms                :decimal(, )
#  full_bathrooms                :integer
#  favorited                     :integer
#  fake_favorited                :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  featured_file_name            :string
#  featured_content_type         :string
#  featured_file_size            :integer
#  featured_updated_at           :datetime
#  image_id                      :integer
#  description                   :text
#  short_description             :text
#  garage_size                   :integer
#  has_garage                    :boolean
#
# Indexes
#
#  index_properties_on_full_address  (full_address) UNIQUE
#
