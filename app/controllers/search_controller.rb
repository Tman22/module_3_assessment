class SearchController < ApplicationController

  def create
    binding.pry
    redirect_to search_index_path
  end

  def index
    @items = BestBuyService.product_search(params[:item])
  end

end
