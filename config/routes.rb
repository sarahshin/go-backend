Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events, :users, :trips, :user_trips
      post '/restaurant_search', to: 'yelp#restaurantSearch'
      post '/nightlife_search', to: 'yelp#nightlifeSearch'
      post '/souvenirs_search', to: 'yelp#souvenirsSearch'
      post '/arts_search', to: 'yelp#artsSearch'
      post '/tours_search', to: 'yelp#toursSearch'
    end
  end
end
