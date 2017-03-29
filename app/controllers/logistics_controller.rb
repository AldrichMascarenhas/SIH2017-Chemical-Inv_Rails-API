class LogisticsController < ApplicationController
  before_action :set_logistic, only: [:show, :update, :destroy]

  # GET /logistics
  def index
    @user = User.find(params[:user_id])
    @logistics = @user.logistics.all

    render json: @logistics
  end

  # GET /logistics/1
  def show
    render json: @logistic
  end

  # POST /logistics
  def create

    @user = User.find(params[:user_id])
    @logistic = @user.logistics.create(logistic_params)

    if @logistic.save
      render json: @logistic, status: :created, location: @logistic
    else
      render json: @logistic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logistics/1
  def update
    if @logistic.update(logistic_params)
      render json: @logistic
    else
      render json: @logistic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logistics/1
  def destroy
    @logistic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logistic
      @logistic = Logistic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def logistic_params
      params.permit(:name, :logistics_type)
    end
end
