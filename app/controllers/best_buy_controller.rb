class BestBuyController < ApplicationController
  def index
  end

  def search
    @results = Search.get_results(params["query"])
  end
end
