class BestBuyController < ApplicationController
  def index
  end

  def search
    binding.pry
    @results = Search.get_results(params["query"])
  end
end

# apikey = 6tmxnbn286qhnt4act7h3tt8
