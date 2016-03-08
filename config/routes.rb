Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api,  :defaults => { :format => 'json' } do
    namespace :v1 do

      namespace :items do
        get '/', to: "items#index"
        get '/:id', to: "items#show"
        delete '/:id', to: "items#destroy"
        post '/', to: "items#create"
      end



    end
  end
end
