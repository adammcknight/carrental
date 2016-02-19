json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :vehicle_type, :registration, :fuel_type, :transmission, :passengers, :model, :daily_price, :vehicle_id
  json.url vehicle_url(vehicle, format: :json)
end
