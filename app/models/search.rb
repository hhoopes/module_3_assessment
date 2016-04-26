class Search
  def self.get_results(query)
    root = "https://api.bestbuy.com/v1/products("
    item_params = "longDescription=" + query + ")?"
    search_terms = "pageSize=15&"
    show = "show=sku,name,customerReviewAverage,shortDescription,salePrice,image&"
    api_key = "apiKey=#{ENV["api_key"]}"
    binding.pry
    url = root + item_params + search_terms + show + api_key
    binding.pry
    Faraday.get(url)
  end
end

https://api.bestbuy.com/v1/products(longDescription=sennheiser)?pageSize=15&show=sku,name,customerReviewAverage,shortDescription,salePrice,image&apiKey=6tmxnbn286qhnt4act7h3tt8
https://api.bestbuy.com/v1/products(longDescription=iPhone*|sku=7619002)?show=sku,name&pageSize=15&page=5&apiKey=YourAPIKey&format=json'
