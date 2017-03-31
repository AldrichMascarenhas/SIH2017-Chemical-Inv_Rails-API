class AdminViewController < ApplicationController


  def showallproducers
    @producers = Producer.all

    render json: @producers
  end

  def showallproducttypes
    @producttypes = ProductType.all

    render json: @producttypes

  end

  def showallproducts
    @products = Product.all

    render json: @products
  end

  def showallpackages
    @packages = Package.all

    render json: @packages

  end

  def showalllogistics
    @logistics = Logistic.all

    render json: @logistics
  end

  def showalltransports
    @transports = Transport.all

    render json: @transports
  end

  def showalllogisticservices
    @logisticservices = LogisticsService.all

    render json:  @logisticservices
  end

  def showallwarehouses
    @warehouses = Warehouse.all

    render json: @warehouses
  end


  def showallshipments
    @shipments = Shipment.all

    render json: @shipments

  end





end
