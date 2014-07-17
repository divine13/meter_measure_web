require 'test_helper'

class MetersControllerTest < ActionController::TestCase
  setup do
    @meter = meters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meters)
  end

  test "should create meter" do
    assert_difference('Meter.count') do
      post :create, meter: { _id: @meter._id, day: @meter.day, note: @meter.note, reading: @meter.reading, time: @meter.time }
    end

    assert_response 201
  end

  test "should show meter" do
    get :show, id: @meter
    assert_response :success
  end

  test "should update meter" do
    put :update, id: @meter, meter: { _id: @meter._id, day: @meter.day, note: @meter.note, reading: @meter.reading, time: @meter.time }
    assert_response 204
  end

  test "should destroy meter" do
    assert_difference('Meter.count', -1) do
      delete :destroy, id: @meter
    end

    assert_response 204
  end
end
