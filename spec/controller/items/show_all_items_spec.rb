require 'rails_helper'

RSpec.describe "Displays all items" type: :controller do
  fixtures :items

  it "#index" do
    get :index, format: :json
    items = response.body

    expect(response).to success
    expect(items.count).to 3
  end
end
