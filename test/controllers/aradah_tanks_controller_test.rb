require 'test_helper'

class AradahTanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aradah_tank = aradah_tanks(:one)
  end

  test "should get index" do
    get aradah_tanks_url
    assert_response :success
  end

  test "should get new" do
    get new_aradah_tank_url
    assert_response :success
  end

  test "should create aradah_tank" do
    assert_difference('AradahTank.count') do
      post aradah_tanks_url, params: { aradah_tank: { al_musa_tank: @aradah_tank.al_musa_tank, alhalah_tank: @aradah_tank.alhalah_tank, aljwfaa_tank: @aradah_tank.aljwfaa_tank, alkahelah_tank: @aradah_tank.alkahelah_tank, alqalab_tank: @aradah_tank.alqalab_tank, alqesma_plant4_tank: @aradah_tank.alqesma_plant4_tank, aradah_plant_tank: @aradah_tank.aradah_plant_tank, balhakam_tank: @aradah_tank.balhakam_tank, balqazmar_tank: @aradah_tank.balqazmar_tank, bani_adwan_tank: @aradah_tank.bani_adwan_tank, bani_hasan_tank: @aradah_tank.bani_hasan_tank, bedah_tank: @aradah_tank.bedah_tank, date: @aradah_tank.date, daws_tank: @aradah_tank.daws_tank, marawah_tank: @aradah_tank.marawah_tank, mashoqa_tank: @aradah_tank.mashoqa_tank, mashoqah_plant2_tank: @aradah_tank.mashoqah_plant2_tank, naqal_plant1_tnak: @aradah_tank.naqal_plant1_tnak, qaran_dabi_tank: @aradah_tank.qaran_dabi_tank, ras_manhal_plant3_tank: @aradah_tank.ras_manhal_plant3_tank, sayhan_tank: @aradah_tank.sayhan_tank, thraween_plant5_tank: @aradah_tank.thraween_plant5_tank, user_id: @aradah_tank.user_id } }
    end

    assert_redirected_to aradah_tank_url(AradahTank.last)
  end

  test "should show aradah_tank" do
    get aradah_tank_url(@aradah_tank)
    assert_response :success
  end

  test "should get edit" do
    get edit_aradah_tank_url(@aradah_tank)
    assert_response :success
  end

  test "should update aradah_tank" do
    patch aradah_tank_url(@aradah_tank), params: { aradah_tank: { al_musa_tank: @aradah_tank.al_musa_tank, alhalah_tank: @aradah_tank.alhalah_tank, aljwfaa_tank: @aradah_tank.aljwfaa_tank, alkahelah_tank: @aradah_tank.alkahelah_tank, alqalab_tank: @aradah_tank.alqalab_tank, alqesma_plant4_tank: @aradah_tank.alqesma_plant4_tank, aradah_plant_tank: @aradah_tank.aradah_plant_tank, balhakam_tank: @aradah_tank.balhakam_tank, balqazmar_tank: @aradah_tank.balqazmar_tank, bani_adwan_tank: @aradah_tank.bani_adwan_tank, bani_hasan_tank: @aradah_tank.bani_hasan_tank, bedah_tank: @aradah_tank.bedah_tank, date: @aradah_tank.date, daws_tank: @aradah_tank.daws_tank, marawah_tank: @aradah_tank.marawah_tank, mashoqa_tank: @aradah_tank.mashoqa_tank, mashoqah_plant2_tank: @aradah_tank.mashoqah_plant2_tank, naqal_plant1_tnak: @aradah_tank.naqal_plant1_tnak, qaran_dabi_tank: @aradah_tank.qaran_dabi_tank, ras_manhal_plant3_tank: @aradah_tank.ras_manhal_plant3_tank, sayhan_tank: @aradah_tank.sayhan_tank, thraween_plant5_tank: @aradah_tank.thraween_plant5_tank, user_id: @aradah_tank.user_id } }
    assert_redirected_to aradah_tank_url(@aradah_tank)
  end

  test "should destroy aradah_tank" do
    assert_difference('AradahTank.count', -1) do
      delete aradah_tank_url(@aradah_tank)
    end

    assert_redirected_to aradah_tanks_url
  end
end
