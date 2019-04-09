class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :startdate, :enddate

  has_many :user_trips
end
