class LogisticsServicesController < ApplicationController
  before_action :set_logistics_service, only: [:show, :update, :destroy]

  # GET /logistics_services
  def index
    @transport = Transport.find(params[:transport_id])
    @logistics_services = @transport.logistics_services.all

    render json: @logistics_services
  end

  # GET /logistics_services/1
  def show
    render json: @logistics_service
  end

  # POST /logistics_services
  def create
    @transport = Transport.find(params[:transport_id])

    @logistics_service = @transport.logistics_services.create(logistics_service_params)

    if @logistics_service.save
      render json: @logistics_service, status: :created, location: @logistics_service
    else
      render json: @logistics_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logistics_services/1
  def update
    if @logistics_service.update(logistics_service_params)
      render json: @logistics_service
    else
      render json: @logistics_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logistics_services/1
  def destroy
    @logistics_service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logistics_service
      @logistics_service = LogisticsService.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def logistics_service_params
      params.permit(:name, :description)

    end
end
