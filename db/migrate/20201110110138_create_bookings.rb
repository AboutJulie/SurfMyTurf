class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :renting_period
      t.float :total_price

      t.timestamps
    end
  end
end
