class RemoveColumnToDaron < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :darons_id
    add_reference :bookings, :daron, foreign_key: true
  end
end
