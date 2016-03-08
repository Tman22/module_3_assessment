class BestBuyService

  attr_reader :connection

  def initialize
    headers
    Faraday.new(:url => "https://api.bestbuy.com/v1/")
  end

  # def self.all_items
  #   parse(connection.get("products.json.zip?apiKey=YourAPIKey"))
  # end

private

  def parse(response)
    JSON.parse(response)
  end

end