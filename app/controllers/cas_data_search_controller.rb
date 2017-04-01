class CasDataSearchController < ApplicationController
  def search

    # @casdatanumber = params[:casdata]

    require 'open-uri'
    @doc = Nokogiri::HTML(open("http://www.chemnet.com/cas/supplier.cgi?terms=460-19-5&l=en&exact=dict&f=plist&mark=&submit.x=25&submit.y=13&submit=search"))
    render json: { data: @doc}

  end
end
