class Search < OpenStruct
  def self.get_results(query)
    root = "https://api.bestbuy.com/v1/products("
    item_params = "longDescription=" + query + "*)?"
    page = "pageSize=15&page=5&"
    show = "show=sku,name,customerReviewAverage,shortDescription,salePrice,image&"
    api_key = "apiKey=#{ENV["api_key"]}&"
    formatted = "format=json"
    url = root + item_params + show + page + api_key + formatted
    response = Faraday.get(url)
    all = JSON.parse(response.body)["products"]
    all.each.map |product|
      Search.new(product)
    end
  end

end
#
# https://api.bestbuy.com/v1/products(longDescription=sennheiser*)?show=sku,name,customerReviewAverage,shortDescription,salePrice,image&pageSize=15&apiKey=6tmxnbn286qhnt4act7h3tt8&format=json
# https://api.bestbuy.com/v1/products(longDescription=iPhone*|sku=7619002)?show=sku,name&pageSize=15&page=5&apiKey=YourAPIKey&format=json'
