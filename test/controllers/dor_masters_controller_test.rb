require 'test_helper'

class DorMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dor_master = dor_masters(:one)
  end

  test "should get index" do
    get dor_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_dor_master_url
    assert_response :success
  end

  test "should create dor_master" do
    assert_difference('DorMaster.count') do
      post dor_masters_url, params: { dor_master: { date: @dor_master.date, user_id: @dor_master.user_id } }
    end

    assert_redirected_to dor_master_url(DorMaster.last)
  end

  test "should show dor_master" do
    get dor_master_url(@dor_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_dor_master_url(@dor_master)
    assert_response :success
  end

  test "should update dor_master" do
    patch dor_master_url(@dor_master), params: { dor_master: { date: @dor_master.date, user_id: @dor_master.user_id } }
    assert_redirected_to dor_master_url(@dor_master)
  end

  test "should destroy dor_master" do
    assert_difference('DorMaster.count', -1) do
      delete dor_master_url(@dor_master)
    end

    assert_redirected_to dor_masters_url
  end
end
