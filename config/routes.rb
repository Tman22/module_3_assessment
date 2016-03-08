Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  resource :api, default: {format: JSON} do
    resource :v1 do

      resource :items do

        get '/items', to: "items#index"
      end


    end
  end
end
