class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.integer :total_price
      t.string :location

      t.timestamps
    end
  end
end
