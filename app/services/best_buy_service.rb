class BestBuyService

  attr_reader :connection

  def initialize
    binding.pry
    @connection = Faraday.new(:url => "https://api.bestbuy.com/v1/")
  end

  def self.product_search(product)
    parse(connection.get("products(search=#{product})?format=json&show=sku,name,salePrice,shortDescription,customerReviewAverage,image&apiKey=#{ENV['BEST_BUY_KEY']}"))
  end

private

  def parse(response)
    JSON.parse(response, symbolize_names: true)
  end

end
