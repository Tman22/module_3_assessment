class Api::V1::Items::ItemsController < Api::ApiController
  respond_to :json

  def index
    respond_with Item.all
  end

  def show
    respond_with Item.find(params[:id])
  end

  def destroy
    respond_with Item.find(params[:id]).destroy
  end

  def create
    @item = Item.create(item_params)
    respond_with @item
  end

  private

  def item_params

  end

end
