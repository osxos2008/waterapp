require 'test_helper'

class AljnabeenTanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aljnabeen_tank = aljnabeen_tanks(:one)
  end

  test "should get index" do
    get aljnabeen_tanks_url
    assert_response :success
  end

  test "should get new" do
    get new_aljnabeen_tank_url
    assert_response :success
  end

  test "should create aljnabeen_tank" do
    assert_difference('AljnabeenTank.count') do
      post aljnabeen_tanks_url, params: { aljnabeen_tank: { abdan_tank: @aljnabeen_tank.abdan_tank, alfryh_tank: @aljnabeen_tank.alfryh_tank, algema_tank: @aljnabeen_tank.algema_tank, aljbeel_Tank: @aljnabeen_tank.aljbeel_Tank, almontag_tank: @aljnabeen_tank.almontag_tank, alrahwa_tank: @aljnabeen_tank.alrahwa_tank, date: @aljnabeen_tank.date, shra_tank: @aljnabeen_tank.shra_tank, user_id: @aljnabeen_tank.user_id } }
    end

    assert_redirected_to aljnabeen_tank_url(AljnabeenTank.last)
  end

  test "should show aljnabeen_tank" do
    get aljnabeen_tank_url(@aljnabeen_tank)
    assert_response :success
  end

  test "should get edit" do
    get edit_aljnabeen_tank_url(@aljnabeen_tank)
    assert_response :success
  end

  test "should update aljnabeen_tank" do
    patch aljnabeen_tank_url(@aljnabeen_tank), params: { aljnabeen_tank: { abdan_tank: @aljnabeen_tank.abdan_tank, alfryh_tank: @aljnabeen_tank.alfryh_tank, algema_tank: @aljnabeen_tank.algema_tank, aljbeel_Tank: @aljnabeen_tank.aljbeel_Tank, almontag_tank: @aljnabeen_tank.almontag_tank, alrahwa_tank: @aljnabeen_tank.alrahwa_tank, date: @aljnabeen_tank.date, shra_tank: @aljnabeen_tank.shra_tank, user_id: @aljnabeen_tank.user_id } }
    assert_redirected_to aljnabeen_tank_url(@aljnabeen_tank)
  end

  test "should destroy aljnabeen_tank" do
    assert_difference('AljnabeenTank.count', -1) do
      delete aljnabeen_tank_url(@aljnabeen_tank)
    end

    assert_redirected_to aljnabeen_tanks_url
  end
end
