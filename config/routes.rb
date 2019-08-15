Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events, only: [:index]
      resources :items, only: [:index]
      resources :users, only: [:create] do
        resources :participants, only: [:index]
      end
      post '/login', to: 'login#create'
      get '/login', to: 'login#show'
      put '/login', to: 'login#update'
      patch '/login', to: 'login#update'
    end
  end
end
