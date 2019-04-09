class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :password

  has_many :user_trips
end
