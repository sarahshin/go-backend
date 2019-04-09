class UserTripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :trip_id

  belongs_to :user
  belongs_to :trip
  has_many :events
end
