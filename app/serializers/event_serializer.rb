class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :name, :address, :url, :imgurl, :user_trip_id, :address1, :address2, :latitude, :longitude, :phone, :rating, :price

  belongs_to :user_trip
end
