Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api do
    namespace :v1 do

      namespace :items do
        get '/', to: "items#index"
        get '/:id', to: "items#show"
        delete '/:id', to: "items#destroy"
      end



    end
  end
end
