class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :update, :destroy]

  # GET /packages
  def index
    @product = Product.find(params[:product_id])
    @packages = @product.packages.all
    render json: @packages
  end

  # GET /packages/1
  def show
    render json: @package
  end

  # POST /packages
  def create

    @package = Package.new(package_params)



    if @package.save
      render json: @package, status: :created, location: @package
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /packages/1
  def update


    if @package.update_attributes(warehouse_id: params[:warehouse_id])
      render json: @package
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  # DELETE /packages/1
  def destroy
    @package.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def package_params
      params.permit(:packages_type).merge(product_id: params[:product_id],shipment_id: params[:shipment_id])
    end
end
