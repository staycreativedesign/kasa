require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { bedrooms: @property.bedrooms, city: @property.city, condition: @property.condition, current_list_price: @property.current_list_price, fake_favorited: @property.fake_favorited, favorited: @property.favorited, full_address: @property.full_address, full_bathrooms: @property.full_bathrooms, half_bathrooms: @property.half_bathrooms, last_update_description: @property.last_update_description, listing_office: @property.listing_office, location: @property.location, lot_sqft: @property.lot_sqft, mls_date_added: @property.mls_date_added, mls_date_modified: @property.mls_date_modified, mls_listing_number: @property.mls_listing_number, mls_name: @property.mls_name, mls_sources: @property.mls_sources, property_type: @property.property_type, short_last_update_description: @property.short_last_update_description, sold_price: @property.sold_price, sqft: @property.sqft, sqft_price: @property.sqft_price, status: @property.status, street_name: @property.street_name, street_number: @property.street_number, unit_number: @property.unit_number, year_built: @property.year_built, zip: @property.zip }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { bedrooms: @property.bedrooms, city: @property.city, condition: @property.condition, current_list_price: @property.current_list_price, fake_favorited: @property.fake_favorited, favorited: @property.favorited, full_address: @property.full_address, full_bathrooms: @property.full_bathrooms, half_bathrooms: @property.half_bathrooms, last_update_description: @property.last_update_description, listing_office: @property.listing_office, location: @property.location, lot_sqft: @property.lot_sqft, mls_date_added: @property.mls_date_added, mls_date_modified: @property.mls_date_modified, mls_listing_number: @property.mls_listing_number, mls_name: @property.mls_name, mls_sources: @property.mls_sources, property_type: @property.property_type, short_last_update_description: @property.short_last_update_description, sold_price: @property.sold_price, sqft: @property.sqft, sqft_price: @property.sqft_price, status: @property.status, street_name: @property.street_name, street_number: @property.street_number, unit_number: @property.unit_number, year_built: @property.year_built, zip: @property.zip }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
