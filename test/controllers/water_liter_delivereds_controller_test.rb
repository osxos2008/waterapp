require 'test_helper'

class WaterLiterDeliveredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water_liter_delivered = water_liter_delivereds(:one)
  end

  test "should get index" do
    get water_liter_delivereds_url
    assert_response :success
  end

  test "should get new" do
    get new_water_liter_delivered_url
    assert_response :success
  end

  test "should create water_liter_delivered" do
    assert_difference('WaterLiterDelivered.count') do
      post water_liter_delivereds_url, params: { water_liter_delivered: { date: @water_liter_delivered.date, district_id: @water_liter_delivered.district_id, quantity: @water_liter_delivered.quantity, user_id: @water_liter_delivered.user_id } }
    end

    assert_redirected_to water_liter_delivered_url(WaterLiterDelivered.last)
  end

  test "should show water_liter_delivered" do
    get water_liter_delivered_url(@water_liter_delivered)
    assert_response :success
  end

  test "should get edit" do
    get edit_water_liter_delivered_url(@water_liter_delivered)
    assert_response :success
  end

  test "should update water_liter_delivered" do
    patch water_liter_delivered_url(@water_liter_delivered), params: { water_liter_delivered: { date: @water_liter_delivered.date, district_id: @water_liter_delivered.district_id, quantity: @water_liter_delivered.quantity, user_id: @water_liter_delivered.user_id } }
    assert_redirected_to water_liter_delivered_url(@water_liter_delivered)
  end

  test "should destroy water_liter_delivered" do
    assert_difference('WaterLiterDelivered.count', -1) do
      delete water_liter_delivered_url(@water_liter_delivered)
    end

    assert_redirected_to water_liter_delivereds_url
  end
end
