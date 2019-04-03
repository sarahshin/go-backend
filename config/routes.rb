Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events, :users, :trips, :user_trips
      get '/yelp', to: 'yelp#fetch'
    end
  end
end
