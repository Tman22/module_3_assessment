require 'rails_helper'

RSpec.describe Api::V1::Items::ItemsController, type: :controller do
  fixtures :items
  describe "get index" do
    it "#index" do
      get :index, format: :json
      items = response.body

      expect(response.status).to eq 200
      expect(items.count).to 3
    end

    it "#show" do
      item = items(:one)
      get :show, id: 1, format: :json
      item = response.body

      expect[:name]
    end
  end
end
