require 'test_helper'

class TohamhalshamelTanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tohamhalshamel_tank = tohamhalshamel_tanks(:one)
  end

  test "should get index" do
    get tohamhalshamel_tanks_url
    assert_response :success
  end

  test "should get new" do
    get new_tohamhalshamel_tank_url
    assert_response :success
  end

  test "should create tohamhalshamel_tank" do
    assert_difference('TohamhalshamelTank.count') do
      post tohamhalshamel_tanks_url, params: { tohamhalshamel_tank: { alahsabah_tank: @tohamhalshamel_tank.alahsabah_tank, aljareen_tank: @tohamhalshamel_tank.aljareen_tank, almaqwa_plant_tank: @tohamhalshamel_tank.almaqwa_plant_tank, almswadah_tank: @tohamhalshamel_tank.almswadah_tank, bani_ata_plant_tank: @tohamhalshamel_tank.bani_ata_plant_tank, bani_ata_tank: @tohamhalshamel_tank.bani_ata_tank, date: @tohamhalshamel_tank.date, dogah_plant_tank: @tohamhalshamel_tank.dogah_plant_tank, dogah_tank: @tohamhalshamel_tank.dogah_tank, gamed_znad_tajmee3_tank3: @tohamhalshamel_tank.gamed_znad_tajmee3_tank3, gamed_znad_tank1: @tohamhalshamel_tank.gamed_znad_tank1, gamed_znad_tank2: @tohamhalshamel_tank.gamed_znad_tank2, hajrah_tank: @tohamhalshamel_tank.hajrah_tank, mamna_plant_tank: @tohamhalshamel_tank.mamna_plant_tank, mamna_tank: @tohamhalshamel_tank.mamna_tank, maqwah_north_plant_tank: @tohamhalshamel_tank.maqwah_north_plant_tank, maqwah_north_tank: @tohamhalshamel_tank.maqwah_north_tank, maqwah_tajme3_tank: @tohamhalshamel_tank.maqwah_tajme3_tank, nasbah_plant_tank: @tohamhalshamel_tank.nasbah_plant_tank, nasbah_tank: @tohamhalshamel_tank.nasbah_tank, nawan_tank: @tohamhalshamel_tank.nawan_tank, nera3_tank: @tohamhalshamel_tank.nera3_tank, nera_plant1_tank: @tohamhalshamel_tank.nera_plant1_tank, nera_plant2_tank: @tohamhalshamel_tank.nera_plant2_tank, qelwah_plant_tank: @tohamhalshamel_tank.qelwah_plant_tank, qelwah_tajme3_Tank: @tohamhalshamel_tank.qelwah_tajme3_Tank, rmaydah_tank: @tohamhalshamel_tank.rmaydah_tank, user_id: @tohamhalshamel_tank.user_id } }
    end

    assert_redirected_to tohamhalshamel_tank_url(TohamhalshamelTank.last)
  end

  test "should show tohamhalshamel_tank" do
    get tohamhalshamel_tank_url(@tohamhalshamel_tank)
    assert_response :success
  end

  test "should get edit" do
    get edit_tohamhalshamel_tank_url(@tohamhalshamel_tank)
    assert_response :success
  end

  test "should update tohamhalshamel_tank" do
    patch tohamhalshamel_tank_url(@tohamhalshamel_tank), params: { tohamhalshamel_tank: { alahsabah_tank: @tohamhalshamel_tank.alahsabah_tank, aljareen_tank: @tohamhalshamel_tank.aljareen_tank, almaqwa_plant_tank: @tohamhalshamel_tank.almaqwa_plant_tank, almswadah_tank: @tohamhalshamel_tank.almswadah_tank, bani_ata_plant_tank: @tohamhalshamel_tank.bani_ata_plant_tank, bani_ata_tank: @tohamhalshamel_tank.bani_ata_tank, date: @tohamhalshamel_tank.date, dogah_plant_tank: @tohamhalshamel_tank.dogah_plant_tank, dogah_tank: @tohamhalshamel_tank.dogah_tank, gamed_znad_tajmee3_tank3: @tohamhalshamel_tank.gamed_znad_tajmee3_tank3, gamed_znad_tank1: @tohamhalshamel_tank.gamed_znad_tank1, gamed_znad_tank2: @tohamhalshamel_tank.gamed_znad_tank2, hajrah_tank: @tohamhalshamel_tank.hajrah_tank, mamna_plant_tank: @tohamhalshamel_tank.mamna_plant_tank, mamna_tank: @tohamhalshamel_tank.mamna_tank, maqwah_north_plant_tank: @tohamhalshamel_tank.maqwah_north_plant_tank, maqwah_north_tank: @tohamhalshamel_tank.maqwah_north_tank, maqwah_tajme3_tank: @tohamhalshamel_tank.maqwah_tajme3_tank, nasbah_plant_tank: @tohamhalshamel_tank.nasbah_plant_tank, nasbah_tank: @tohamhalshamel_tank.nasbah_tank, nawan_tank: @tohamhalshamel_tank.nawan_tank, nera3_tank: @tohamhalshamel_tank.nera3_tank, nera_plant1_tank: @tohamhalshamel_tank.nera_plant1_tank, nera_plant2_tank: @tohamhalshamel_tank.nera_plant2_tank, qelwah_plant_tank: @tohamhalshamel_tank.qelwah_plant_tank, qelwah_tajme3_Tank: @tohamhalshamel_tank.qelwah_tajme3_Tank, rmaydah_tank: @tohamhalshamel_tank.rmaydah_tank, user_id: @tohamhalshamel_tank.user_id } }
    assert_redirected_to tohamhalshamel_tank_url(@tohamhalshamel_tank)
  end

  test "should destroy tohamhalshamel_tank" do
    assert_difference('TohamhalshamelTank.count', -1) do
      delete tohamhalshamel_tank_url(@tohamhalshamel_tank)
    end

    assert_redirected_to tohamhalshamel_tanks_url
  end
end
