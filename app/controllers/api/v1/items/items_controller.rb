class Api::V1::Items::ItemsController < Api::ApiController
  respond_to :json

  def index
    respond_with Item.
  end


end
