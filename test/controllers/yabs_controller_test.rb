require 'test_helper'

class YabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yab = yabs(:one)
  end

  test "should get index" do
    get yabs_url
    assert_response :success
  end

  test "should get new" do
    get new_yab_url
    assert_response :success
  end

  test "should create yab" do
    assert_difference('Yab.count') do
      post yabs_url, params: { yab: { batat_distribution: @yab.batat_distribution, date: @yab.date, user_id: @yab.user_id, yabs_distribution: @yab.yabs_distribution, yabs_produce: @yab.yabs_produce, yabs_tank: @yab.yabs_tank } }
    end

    assert_redirected_to yab_url(Yab.last)
  end

  test "should show yab" do
    get yab_url(@yab)
    assert_response :success
  end

  test "should get edit" do
    get edit_yab_url(@yab)
    assert_response :success
  end

  test "should update yab" do
    patch yab_url(@yab), params: { yab: { batat_distribution: @yab.batat_distribution, date: @yab.date, user_id: @yab.user_id, yabs_distribution: @yab.yabs_distribution, yabs_produce: @yab.yabs_produce, yabs_tank: @yab.yabs_tank } }
    assert_redirected_to yab_url(@yab)
  end

  test "should destroy yab" do
    assert_difference('Yab.count', -1) do
      delete yab_url(@yab)
    end

    assert_redirected_to yabs_url
  end
end
