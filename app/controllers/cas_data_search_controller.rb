class CasDataSearchController < ApplicationController

  def search

    @casdatanumber = params[:casdata]

    render json: { cas: @casdatanumber}


  end
end
