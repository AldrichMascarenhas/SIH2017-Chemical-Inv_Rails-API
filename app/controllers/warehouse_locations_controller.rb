class WarehouseLocationsController < ApplicationController
  before_action :set_warehouse_location, only: [:show, :update, :destroy]

  # GET /warehouse_locations
  def index
    @warehouse_locations = WarehouseLocation.all

    render json: @warehouse_locations
  end

  # GET /warehouse_locations/1
  def show
    render json: @warehouse_location
  end

  # POST /warehouse_locations
  def create

    @warehouse = Warehouse.find(params[:warehouse_id])
    @warehouse_location = @warehouse.warehouse_location.create(warehouse_location_params)


    if @warehouse_location.save
      render json: @warehouse_location, status: :created, location: @warehouse_location
    else
      render json: @warehouse_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /warehouse_locations/1
  def update
    if @warehouse_location.update(warehouse_location_params)
      render json: @warehouse_location
    else
      render json: @warehouse_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /warehouse_locations/1
  def destroy
    @warehouse_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse_location
      @warehouse_location = WarehouseLocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def warehouse_location_params
      params.permit(:fulladdress ,:state ,:pincode)
    end
end
