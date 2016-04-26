class Search
  def self.get_results(query)
    item_params = "longDescription=" + query
    search_terms = "pageSize=15"
    show = "show=sku,name,customerReviewAverage,shortDescription,salePrice,image"
    api_key = ENV[api_key]
    Faraday.get(
    "https://api.bestbuy.com/v1/products(
    + #{item_params})
    + #{search_terms}
    + #{show}
    + #{api_key}"

  end
end
