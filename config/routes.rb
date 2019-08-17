Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events, only: [:index, :create]
      resources :items, only: [:index]
      resources :users, only: [:create] do
        resources :participants, only: [:index]
      end
      post '/login', to: 'login#create'
      put '/login/:id', to: 'login#update'
      patch '/login/:id', to: 'login#update'
      post '/events/:event_id/items/:id', to: 'events#create_event_item'
    end
  end
end
