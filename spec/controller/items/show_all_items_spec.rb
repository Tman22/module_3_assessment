require 'rails_helper'

RSpec.describe "Displays all items" type: :controller do
  #fixtures

  it "#index" do
    # items = items(:one)
    get :index, item: items.id, format: :json
    items = response.body


  end
end
