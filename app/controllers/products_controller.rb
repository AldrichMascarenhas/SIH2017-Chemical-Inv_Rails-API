class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @producer = Producer.find(params[:producer_id])
    @products = @producer.products.all
    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create

    @producer = Producer.find(params[:producer_id])
    @product = @producer.products.create(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.permit(:name,
      :products_type,
      :description,
      :cas_number,
      :quantity,
      :quantity_type)
    end
end
