class LogisticsServicesController < ApplicationController
  before_action :set_logistics_service, only: [:show, :update, :destroy]

  # GET /logistics_services
  def index
    @logistic = Logistic.find(params[:logistic_id])
    @logistics_services = @logistic.logistics_services.all

    render json: @logistics_services
  end

  # GET /logistics_services/1
  def show
    render json: @logistics_service
  end

  # POST /logistics_services
  def create

    @logistics_service = LogisticsService.new(logistics_service_params)

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
      params.permit(:name, :description).merge(logistic_id: params[:logistic_id],transport_id: params[:transport_id])

    end
end
