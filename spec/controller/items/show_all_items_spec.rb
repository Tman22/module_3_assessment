require 'rails_helper'

RSpec.describe Api::V1::Items::ItemsController, type: :controller do
  fixtures :items
  describe "get index" do
    it "#index" do
      get :index, format: :json
      items = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(items.count).to eq 3
    end

    it "#show" do
      item = items(:one)
      get :show, id: item.id, format: :json
      item = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(item['name']).to eq "Bruce"
    end

    it "#create" do
      post :create, {name: "Time", description: "a", image_url: "yay" }, format: :json
      item = JSON.parse(response.body)

      expect(response.status).to eq 201
      expect(item['name']).to eq "Time"
    end
  end
end
