class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :password, :user_trips

  has_many :user_trips, serializer: UserTripSerializer
end
