require 'test_helper'

class ServiceStationsControllerTest < ActionController::TestCase
  setup do
    @service_station = service_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_station" do
    assert_difference('ServiceStation.count') do
      post :create, service_station: @service_station.attributes
    end

    assert_redirected_to service_station_path(assigns(:service_station))
  end

  test "should show service_station" do
    get :show, id: @service_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_station
    assert_response :success
  end

  test "should update service_station" do
    put :update, id: @service_station, service_station: @service_station.attributes
    assert_redirected_to service_station_path(assigns(:service_station))
  end

  test "should destroy service_station" do
    assert_difference('ServiceStation.count', -1) do
      delete :destroy, id: @service_station
    end

    assert_redirected_to service_stations_path
  end
end
