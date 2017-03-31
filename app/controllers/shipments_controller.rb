class ShipmentsController < ApplicationController
  before_action :set_shipment, only: [:show, :update, :destroy]

  # GET /shipments
  def index
    @user = User.find(params[:user_id])
    @shipments = @user.shipments.all

    render json: @shipments
  end

  # GET /shipments/1
  def show
    render json: @shipment
  end

  # POST /shipments
  def create

    @user = User.find(params[:user_id])
    @shipment = @user.shipments.create(shipment_params)


    if @shipment.save
      render json: @shipment, status: :created, location: @shipment
    else
      render json: @shipment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shipments/1
  def update

    ids = params[:package_ids].split(',')

    ids.each do |id|
      @package = Package.find(id.to_i)
      @package.update_attributes(shipment_id: params[:id])
    end

    @shipment = Shipment.find(params[:id])

    render json: @shipment


  end

  def addtologisticservice
    @shipment = Shipment.find(params[:shipment_id])
    @shipment.update_attributes(logistics_service_id: params[:logistics_service_id])

    render json: @shipment


  end



  # DELETE /shipments/1
  def destroy
    @shipment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shipment_params
      params.permit(:shipments_type, :name, :status ,:date_departure, :date_arrival)

    end

  # Only allow a trusted parameter "white list" through.
  def package_params
    params.permit(:packages_type)
  end
end
