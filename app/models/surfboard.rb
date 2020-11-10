class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :price, :location, :description, presence: true
end
