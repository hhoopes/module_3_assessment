class BestBuyController < ApplicationController
  def index
  end

  def search
    @results = Search.get_results(params["query"])
    binding.pry
  end
end

# apikey = 6tmxnbn286qhnt4act7h3tt8
