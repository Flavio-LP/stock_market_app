class AssetsController < ApplicationController
  def index
    if params[:symbol]
      @symbol = params[:symbol].upcase
      response = HTTParty.get("https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{@symbol}&apikey=demo")
      @data = JSON.parse(response.body)
    end
  end
end
