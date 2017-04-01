class ProducerLocationsController < ApplicationController
  before_action :set_producer_location, only: [:show, :update, :destroy]

  # GET /producer_locations
  def index
    @producer = Producer.find(params[:producer_id])
    @producer_locations = @producer.producer_location.all

    render json: @producer_locations
  end

  # GET /producer_locations/1
  def show
    render json: @producer_location
  end

  # POST /producer_locations
  def create

    @producer = Producer.find(params[:producer_id])
    @producer_location = @producer.create_producer_location(producer_location_params)


    if @producer_location.save
      render json: @producer_location, status: :created, location: @producer_location
    else
      render json: @producer_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /producer_locations/1
  def update
    if @producer_location.update(producer_location_params)
      render json: @producer_location
    else
      render json: @producer_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /producer_locations/1
  def destroy
    @producer_location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producer_location
      @producer_location = ProducerLocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def producer_location_params
      params.permit(:fulladdress ,:state ,:pincode)
    end
end



