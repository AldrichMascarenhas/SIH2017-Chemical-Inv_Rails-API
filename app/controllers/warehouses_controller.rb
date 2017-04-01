class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :update, :destroy]

  # GET /warehouses
  def index
    @user = User.find(params[:user_id])
    @warehouses = @user.warehouses.all

    render json: @warehouses
  end

  # GET /warehouses/1
  def show
    render json: @warehouse
  end

  def warehousesforstate
    @state = (params[:state])

    @warehouses = Warehouse.joins(:warehouse_location).where('warehouse_locations.state' => @state)

    render json:  @warehouses


  end


  # POST /warehouses
  def create

    @user = User.find(params[:user_id])
    @warehouse = @user.warehouses.create(warehouse_params)


    if @warehouse.save
      render json: @warehouse, status: :created, location: @warehouse
    else
      render json: @warehouse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /warehouses/1
  def update
    if @warehouse.update(warehouse_params)
      render json: @warehouse
    else
      render json: @warehouse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /warehouses/1
  def destroy
    @warehouse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse
      @warehouse = Warehouse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def warehouse_params
      params.permit(:name, :warehouses_type)
    end
end
