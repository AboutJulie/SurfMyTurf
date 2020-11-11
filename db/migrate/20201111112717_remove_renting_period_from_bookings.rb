class RemoveRentingPeriodFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :renting_period, :integer
  end
end
