require 'test_helper'

class AqiqThradTanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aqiq_thrad_tank = aqiq_thrad_tanks(:one)
  end

  test "should get index" do
    get aqiq_thrad_tanks_url
    assert_response :success
  end

  test "should get new" do
    get new_aqiq_thrad_tank_url
    assert_response :success
  end

  test "should create aqiq_thrad_tank" do
    assert_difference('AqiqThradTank.count') do
      post aqiq_thrad_tanks_url, params: { aqiq_thrad_tank: { almzree_tank: @aqiq_thrad_tank.almzree_tank, aom_gayth_tank: @aqiq_thrad_tank.aom_gayth_tank, aqiq_station1: @aqiq_thrad_tank.aqiq_station1, aqiq_station2: @aqiq_thrad_tank.aqiq_station2, aqiq_station3: @aqiq_thrad_tank.aqiq_station3, aqiq_station4: @aqiq_thrad_tank.aqiq_station4, aunoq_tank: @aqiq_thrad_tank.aunoq_tank, baljurashy_tank: @aqiq_thrad_tank.baljurashy_tank, bani_dahabyan_tank: @aqiq_thrad_tank.bani_dahabyan_tank, bani_dhabyan_station_tank: @aqiq_thrad_tank.bani_dhabyan_station_tank, bani_hedah_tank: @aqiq_thrad_tank.bani_hedah_tank, bani_kaber_tank: @aqiq_thrad_tank.bani_kaber_tank, bani_saeed_tank: @aqiq_thrad_tank.bani_saeed_tank, blue_tank: @aqiq_thrad_tank.blue_tank, date: @aqiq_thrad_tank.date, jarab_tank: @aqiq_thrad_tank.jarab_tank, mushereef_tank: @aqiq_thrad_tank.mushereef_tank, shahbah_tank: @aqiq_thrad_tank.shahbah_tank, susabad_station_tank: @aqiq_thrad_tank.susabad_station_tank, thrad_station1_tank: @aqiq_thrad_tank.thrad_station1_tank, thrad_station2_tank: @aqiq_thrad_tank.thrad_station2_tank, thrad_station3_tank: @aqiq_thrad_tank.thrad_station3_tank, thrad_station4_tank: @aqiq_thrad_tank.thrad_station4_tank, thrad_station5_tank: @aqiq_thrad_tank.thrad_station5_tank, user_id: @aqiq_thrad_tank.user_id } }
    end

    assert_redirected_to aqiq_thrad_tank_url(AqiqThradTank.last)
  end

  test "should show aqiq_thrad_tank" do
    get aqiq_thrad_tank_url(@aqiq_thrad_tank)
    assert_response :success
  end

  test "should get edit" do
    get edit_aqiq_thrad_tank_url(@aqiq_thrad_tank)
    assert_response :success
  end

  test "should update aqiq_thrad_tank" do
    patch aqiq_thrad_tank_url(@aqiq_thrad_tank), params: { aqiq_thrad_tank: { almzree_tank: @aqiq_thrad_tank.almzree_tank, aom_gayth_tank: @aqiq_thrad_tank.aom_gayth_tank, aqiq_station1: @aqiq_thrad_tank.aqiq_station1, aqiq_station2: @aqiq_thrad_tank.aqiq_station2, aqiq_station3: @aqiq_thrad_tank.aqiq_station3, aqiq_station4: @aqiq_thrad_tank.aqiq_station4, aunoq_tank: @aqiq_thrad_tank.aunoq_tank, baljurashy_tank: @aqiq_thrad_tank.baljurashy_tank, bani_dahabyan_tank: @aqiq_thrad_tank.bani_dahabyan_tank, bani_dhabyan_station_tank: @aqiq_thrad_tank.bani_dhabyan_station_tank, bani_hedah_tank: @aqiq_thrad_tank.bani_hedah_tank, bani_kaber_tank: @aqiq_thrad_tank.bani_kaber_tank, bani_saeed_tank: @aqiq_thrad_tank.bani_saeed_tank, blue_tank: @aqiq_thrad_tank.blue_tank, date: @aqiq_thrad_tank.date, jarab_tank: @aqiq_thrad_tank.jarab_tank, mushereef_tank: @aqiq_thrad_tank.mushereef_tank, shahbah_tank: @aqiq_thrad_tank.shahbah_tank, susabad_station_tank: @aqiq_thrad_tank.susabad_station_tank, thrad_station1_tank: @aqiq_thrad_tank.thrad_station1_tank, thrad_station2_tank: @aqiq_thrad_tank.thrad_station2_tank, thrad_station3_tank: @aqiq_thrad_tank.thrad_station3_tank, thrad_station4_tank: @aqiq_thrad_tank.thrad_station4_tank, thrad_station5_tank: @aqiq_thrad_tank.thrad_station5_tank, user_id: @aqiq_thrad_tank.user_id } }
    assert_redirected_to aqiq_thrad_tank_url(@aqiq_thrad_tank)
  end

  test "should destroy aqiq_thrad_tank" do
    assert_difference('AqiqThradTank.count', -1) do
      delete aqiq_thrad_tank_url(@aqiq_thrad_tank)
    end

    assert_redirected_to aqiq_thrad_tanks_url
  end
end
