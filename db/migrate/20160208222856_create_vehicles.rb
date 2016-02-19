class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :registration
      t.string :fuel_type
      t.string :transmission
      t.integer :passengers
      t.string :model
      t.decimal :daily_price
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
