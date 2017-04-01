class CasDataSearchController < ApplicationController
  def search

    # @casdatanumber = params[:casdata]

    require 'open-uri'
    @doc = Nokogiri::HTML(open("http://www.chemnet.com/"))
    render json: { data: @doc}

  end
end
