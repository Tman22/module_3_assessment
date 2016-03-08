class BestBuyService

  attr_reader :connection

  def initialize
    Faraday.new(:url => "https://api.bestbuy.com/v1/")
  end

  def self.all_items

  end


private

  def parse(response)
    JSON.parse(response)
  end

end
