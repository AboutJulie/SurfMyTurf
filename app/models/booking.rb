class Booking < ApplicationRecord
  belongs_to :user, :surfboard
end
