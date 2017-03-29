class ProductTypesController < ApplicationController
  before_action :set_product_type, only: [:show, :update, :destroy]

  # GET /product_types
  def index
    @producer = Producer.find(params[:producer_id])
    @product_types = @producer.product_types.all

    render json: @product_types
  end

  # GET /product_types/1
  def show
    render json: @product_type
  end

  # POST /product_types
  def create

    @producer = Producer.find(params[:producer_id])
    @product_type = @producer.product_types.create(product_type_params)

    if @product_type.save
      render json: @product_type, status: :created, location: @product_type
    else
      render json: @product_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_types/1
  def update
    if @product_type.update(product_type_params)
      render json: @product_type
    else
      render json: @product_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_types/1
  def destroy
    @product_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_type
      @product_type = ProductType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_type_params
      params.permit(:name, :product_types_type, :description)
    end
end
