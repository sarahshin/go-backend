Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events, :users, :trips, :user_trips
      post '/restaurant_search', to: 'yelp#restaurantSearch'
      post '/nightlife_search', to: 'yelp#nightlifeSearch'
      post '/souvenir_search', to: 'yelp#souvenirSearch'
      post '/arts_search', to: 'yelp#artsSearch'
      post '/tour_search', to: 'yelp#tourSearch'
      post '/hotel_search', to: 'yelp#hotelSearch'
    end
  end
end
