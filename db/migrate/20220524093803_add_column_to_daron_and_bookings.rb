class AddColumnToDaronAndBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :darons, :user, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :darons, foreign_key: true
    add_column :users, :first_name, :string
    add_column :users, :zip_code, :integer
    add_column :users, :phone_number, :string
  end
end
