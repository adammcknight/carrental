require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { daily_price: @vehicle.daily_price, fuel_type: @vehicle.fuel_type, model: @vehicle.model, passengers: @vehicle.passengers, registration: @vehicle.registration, transmission: @vehicle.transmission, vehicle_id: @vehicle.vehicle_id, vehicle_type: @vehicle.vehicle_type }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { daily_price: @vehicle.daily_price, fuel_type: @vehicle.fuel_type, model: @vehicle.model, passengers: @vehicle.passengers, registration: @vehicle.registration, transmission: @vehicle.transmission, vehicle_id: @vehicle.vehicle_id, vehicle_type: @vehicle.vehicle_type }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
