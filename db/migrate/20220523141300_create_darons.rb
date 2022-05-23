class CreateDarons < ActiveRecord::Migration[7.0]
  def change
    create_table :darons do |t|
      t.string :name
      t.string :profile_picture
      t.string :price
      t.string :bio

      t.timestamps
    end
  end
end
