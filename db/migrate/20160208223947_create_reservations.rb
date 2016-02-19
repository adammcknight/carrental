class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :pick_up_date
      t.date :scheduled_return_date
      t.date :actual_return_date
      t.integer :odometer_reading
      t.decimal :fuel_level
      t.decimal :fine
      t.integer :vehicle_id
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
