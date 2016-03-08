Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  resources :api, default: {format: JSON} do
    resources :v1 do

      resources :items do


      end


    end
  end
end
