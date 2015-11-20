class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  # before_action :set_images, only: [:show]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @images = @property.images
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save

        if params[:images]
          #===== The magic is here ;)
          params[:images].each { |image|
            @property.images.create(image: image)
          }
        end
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)

        if params[:images]
          #===== The magic is here ;)
          params[:images].each { |image|
            @property.images.create(image: image)
          }
        end

        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def property_params
    params.require(:property).permit(:featured, :description, :short_description, :garage_size, :has_garage, :mls_listing_number, :mls_name, :mls_sources, :mls_date_added, :mls_date_modified, :street_number, :street_name, :unit_number, :city, :zip, :location, :full_address, :property_type, :last_update_description, :short_last_update_description, :status, :current_list_price, :sold_price, :sqft, :sqft_price, :lot_sqft, :year_built, :listing_office, :condition, :bedrooms, :half_bathrooms, :full_bathrooms, :favorited, :fake_favorited)
  end

  # def set_images
  #   0.times {@property.images.build}
  # end
end
