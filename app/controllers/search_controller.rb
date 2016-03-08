class SearchController < ApplicationController

  def create
    redirect_to search_index_path
  end

  def index
    @items = BestBuy
  end

end
