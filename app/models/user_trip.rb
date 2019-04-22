class UserTrip < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :events, dependent: :destroy
end
