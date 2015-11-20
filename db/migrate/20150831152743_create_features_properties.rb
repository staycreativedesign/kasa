class CreateFeaturesProperties < ActiveRecord::Migration
  def change
    create_table :features_properties, :id => false do |t|
      t.references :feature, :property
    end

    add_index :features_properties, [:feature_id, :property_id],
      name: "features_properties_index",
      unique: true
  end
end
