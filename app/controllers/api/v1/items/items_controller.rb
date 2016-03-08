class Api::V1::Items::ItemsController < Api::ApiController
  respond_to :json

  def index
    @items = Item.all
    respond_with @items
  end


end
