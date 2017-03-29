class TransportsController < ApplicationController
  before_action :set_transport, only: [:show, :update, :destroy]

  # GET /transports
  def index
    @transports = Transport.all

    render json: @transports
  end

  # GET /transports/1
  def show
    render json: @transport
  end

  # POST /transports
  def create
    @transport = Transport.new(transport_params)

    if @transport.save
      render json: @transport, status: :created, location: @transport
    else
      render json: @transport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transports/1
  def update
    if @transport.update(transport_params)
      render json: @transport
    else
      render json: @transport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transports/1
  def destroy
    @transport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport
      @transport = Transport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transport_params
      params.require(:transport).permit(:logistic_id)
    end
end
