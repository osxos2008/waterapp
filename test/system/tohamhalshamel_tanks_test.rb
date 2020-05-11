require "application_system_test_case"

class TohamhalshamelTanksTest < ApplicationSystemTestCase
  setup do
    @tohamhalshamel_tank = tohamhalshamel_tanks(:one)
  end

  test "visiting the index" do
    visit tohamhalshamel_tanks_url
    assert_selector "h1", text: "Tohamhalshamel Tanks"
  end

  test "creating a Tohamhalshamel tank" do
    visit tohamhalshamel_tanks_url
    click_on "New Tohamhalshamel Tank"

    fill_in "Alahsabah tank", with: @tohamhalshamel_tank.alahsabah_tank
    fill_in "Aljareen tank", with: @tohamhalshamel_tank.aljareen_tank
    fill_in "Almaqwa plant tank", with: @tohamhalshamel_tank.almaqwa_plant_tank
    fill_in "Almswadah tank", with: @tohamhalshamel_tank.almswadah_tank
    fill_in "Bani ata plant tank", with: @tohamhalshamel_tank.bani_ata_plant_tank
    fill_in "Bani ata tank", with: @tohamhalshamel_tank.bani_ata_tank
    fill_in "Date", with: @tohamhalshamel_tank.date
    fill_in "Dogah plant tank", with: @tohamhalshamel_tank.dogah_plant_tank
    fill_in "Dogah tank", with: @tohamhalshamel_tank.dogah_tank
    fill_in "Gamed znad tajmee3 tank3", with: @tohamhalshamel_tank.gamed_znad_tajmee3_tank3
    fill_in "Gamed znad tank1", with: @tohamhalshamel_tank.gamed_znad_tank1
    fill_in "Gamed znad tank2", with: @tohamhalshamel_tank.gamed_znad_tank2
    fill_in "Hajrah tank", with: @tohamhalshamel_tank.hajrah_tank
    fill_in "Mamna plant tank", with: @tohamhalshamel_tank.mamna_plant_tank
    fill_in "Mamna tank", with: @tohamhalshamel_tank.mamna_tank
    fill_in "Maqwah north plant tank", with: @tohamhalshamel_tank.maqwah_north_plant_tank
    fill_in "Maqwah north tank", with: @tohamhalshamel_tank.maqwah_north_tank
    fill_in "Maqwah tajme3 tank", with: @tohamhalshamel_tank.maqwah_tajme3_tank
    fill_in "Nasbah plant tank", with: @tohamhalshamel_tank.nasbah_plant_tank
    fill_in "Nasbah tank", with: @tohamhalshamel_tank.nasbah_tank
    fill_in "Nawan tank", with: @tohamhalshamel_tank.nawan_tank
    fill_in "Nera3 tank", with: @tohamhalshamel_tank.nera3_tank
    fill_in "Nera plant1 tank", with: @tohamhalshamel_tank.nera_plant1_tank
    fill_in "Nera plant2 tank", with: @tohamhalshamel_tank.nera_plant2_tank
    fill_in "Qelwah plant tank", with: @tohamhalshamel_tank.qelwah_plant_tank
    fill_in "Qelwah tajme3 tank", with: @tohamhalshamel_tank.qelwah_tajme3_Tank
    fill_in "Rmaydah tank", with: @tohamhalshamel_tank.rmaydah_tank
    fill_in "User", with: @tohamhalshamel_tank.user_id
    click_on "Create Tohamhalshamel tank"

    assert_text "Tohamhalshamel tank was successfully created"
    click_on "Back"
  end

  test "updating a Tohamhalshamel tank" do
    visit tohamhalshamel_tanks_url
    click_on "Edit", match: :first

    fill_in "Alahsabah tank", with: @tohamhalshamel_tank.alahsabah_tank
    fill_in "Aljareen tank", with: @tohamhalshamel_tank.aljareen_tank
    fill_in "Almaqwa plant tank", with: @tohamhalshamel_tank.almaqwa_plant_tank
    fill_in "Almswadah tank", with: @tohamhalshamel_tank.almswadah_tank
    fill_in "Bani ata plant tank", with: @tohamhalshamel_tank.bani_ata_plant_tank
    fill_in "Bani ata tank", with: @tohamhalshamel_tank.bani_ata_tank
    fill_in "Date", with: @tohamhalshamel_tank.date
    fill_in "Dogah plant tank", with: @tohamhalshamel_tank.dogah_plant_tank
    fill_in "Dogah tank", with: @tohamhalshamel_tank.dogah_tank
    fill_in "Gamed znad tajmee3 tank3", with: @tohamhalshamel_tank.gamed_znad_tajmee3_tank3
    fill_in "Gamed znad tank1", with: @tohamhalshamel_tank.gamed_znad_tank1
    fill_in "Gamed znad tank2", with: @tohamhalshamel_tank.gamed_znad_tank2
    fill_in "Hajrah tank", with: @tohamhalshamel_tank.hajrah_tank
    fill_in "Mamna plant tank", with: @tohamhalshamel_tank.mamna_plant_tank
    fill_in "Mamna tank", with: @tohamhalshamel_tank.mamna_tank
    fill_in "Maqwah north plant tank", with: @tohamhalshamel_tank.maqwah_north_plant_tank
    fill_in "Maqwah north tank", with: @tohamhalshamel_tank.maqwah_north_tank
    fill_in "Maqwah tajme3 tank", with: @tohamhalshamel_tank.maqwah_tajme3_tank
    fill_in "Nasbah plant tank", with: @tohamhalshamel_tank.nasbah_plant_tank
    fill_in "Nasbah tank", with: @tohamhalshamel_tank.nasbah_tank
    fill_in "Nawan tank", with: @tohamhalshamel_tank.nawan_tank
    fill_in "Nera3 tank", with: @tohamhalshamel_tank.nera3_tank
    fill_in "Nera plant1 tank", with: @tohamhalshamel_tank.nera_plant1_tank
    fill_in "Nera plant2 tank", with: @tohamhalshamel_tank.nera_plant2_tank
    fill_in "Qelwah plant tank", with: @tohamhalshamel_tank.qelwah_plant_tank
    fill_in "Qelwah tajme3 tank", with: @tohamhalshamel_tank.qelwah_tajme3_Tank
    fill_in "Rmaydah tank", with: @tohamhalshamel_tank.rmaydah_tank
    fill_in "User", with: @tohamhalshamel_tank.user_id
    click_on "Update Tohamhalshamel tank"

    assert_text "Tohamhalshamel tank was successfully updated"
    click_on "Back"
  end

  test "destroying a Tohamhalshamel tank" do
    visit tohamhalshamel_tanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tohamhalshamel tank was successfully destroyed"
  end
end
