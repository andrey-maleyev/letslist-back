Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events, only: [:index, :create, :show]
      resources :items, only: [:index]
      resources :participants, only: [:create]
      resources :users, only: [:create] do
        resources :participants, only: [:index]
      end
      post '/login', to: 'login#create'
      put '/login/:id', to: 'login#update'
      patch '/login/:id', to: 'login#update'
      post '/events/:event_id/items/:id', to: 'events#create_event_item'
      post '/participants/:participant_id/eventsitems/:id', to: 'participants#create_participant_event_item'
      delete '/participants/:participant_id/eventsitems/:id', to: 'participants#delete_participant_event_item'
    end
  end
end
