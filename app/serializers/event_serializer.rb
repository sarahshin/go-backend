class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :name, :address, :url, :imgurl, :user_trip_id

  belongs_to :user_trip
end
