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


  def getcountofallproducers
    @producers = Producer.count

    render json: @producers
  end

  def getcountofallproducttypes
    @producttypes = ProductType.count

    render json: @producttypes

  end

  def getcountofallproducts
    @products = Product.count

    render json: @products
  end

  def getcountofallpackages
    @packages = Package.count

    render json: @packages

  end

  def getcountofalllogistics
    @logistics = Logistic.count

    render json: @logistics
  end

  def getcountofalltransports
    @transports = Transport.count

    render json: @transports
  end

  def getcountofalllogisticservices
    @logisticservices = LogisticsService.count

    render json:  @logisticservices
  end

  def getcountofallwarehouses
    @warehouses = Warehouse.count

    render json: @warehouses
  end


  def getcountofallshipments
    @shipments = Shipment.count

    render json: @shipments

  end





end
