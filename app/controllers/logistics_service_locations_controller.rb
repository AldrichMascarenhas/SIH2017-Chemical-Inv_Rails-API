class LogisticsServiceLocationsController < ApplicationController
  before_action :set_logistics_service_location, only: [:show, :update, :destroy]

  # GET /logistics_service_locations
  def index
    @logistics_service_locations = LogisticsServiceLocation.all

    render json: @logistics_service_locations
  end

  # GET /logistics_service_locations/1
  def show
    render json: @logistics_service_location
  end

  # POST /logistics_service_locations
  def create
    @logistics_service_location = LogisticsServiceLocation.new(logistics_service_location_params)

    if @logistics_service_location.save
      render json: @logistics_service_location, status: :created, location: @logistics_service_location
    else
      render json: @logistics_service_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logistics_service_locations/1
  def update
    if @logistics_service_location.update(logistics_service_location_params)
      render json: @logistics_service_location
    else
      render json: @logistics_service_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logistics_service_locations/1
  def destroy
    @logistics_service_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logistics_service_location
      @logistics_service_location = LogisticsServiceLocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def logistics_service_location_params
      params.require(:logistics_service_location).permit(:logistics_service_id)
    end
end
