class RemoveColumnToDaronAndBookingsAndUser < ActiveRecord::Migration[7.0]
  def change
    add_column :darons, :badges, :string
    add_column :darons, :zip_code, :integer
    add_column :darons, :phone_number, :string
    remove_column :users, :zip_code
    remove_column :users, :first_name
    remove_column :users, :phone_number
  end
end
