class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :surfboard

  validates :start_date, :end_date, presence: true
end
