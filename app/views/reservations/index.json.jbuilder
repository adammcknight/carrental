json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :pick_up_date, :scheduled_return_date, :actual_return_date, :odometer_reading, :fuel_level, :fine, :vehicle_id, :customer_id
  json.url reservation_url(reservation, format: :json)
end
