class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :category, :price, :location, :description, presence: true
end
