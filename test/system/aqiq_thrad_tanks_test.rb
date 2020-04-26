require "application_system_test_case"

class AqiqThradTanksTest < ApplicationSystemTestCase
  setup do
    @aqiq_thrad_tank = aqiq_thrad_tanks(:one)
  end

  test "visiting the index" do
    visit aqiq_thrad_tanks_url
    assert_selector "h1", text: "Aqiq Thrad Tanks"
  end

  test "creating a Aqiq thrad tank" do
    visit aqiq_thrad_tanks_url
    click_on "New Aqiq Thrad Tank"

    fill_in "Almzree tank", with: @aqiq_thrad_tank.almzree_tank
    fill_in "Aom gayth tank", with: @aqiq_thrad_tank.aom_gayth_tank
    fill_in "Aqiq station1", with: @aqiq_thrad_tank.aqiq_station1
    fill_in "Aqiq station2", with: @aqiq_thrad_tank.aqiq_station2
    fill_in "Aqiq station3", with: @aqiq_thrad_tank.aqiq_station3
    fill_in "Aqiq station4", with: @aqiq_thrad_tank.aqiq_station4
    fill_in "Aunoq tank", with: @aqiq_thrad_tank.aunoq_tank
    fill_in "Baljurashy tank", with: @aqiq_thrad_tank.baljurashy_tank
    fill_in "Bani dahabyan tank", with: @aqiq_thrad_tank.bani_dahabyan_tank
    fill_in "Bani dhabyan station tank", with: @aqiq_thrad_tank.bani_dhabyan_station_tank
    fill_in "Bani hedah tank", with: @aqiq_thrad_tank.bani_hedah_tank
    fill_in "Bani kaber tank", with: @aqiq_thrad_tank.bani_kaber_tank
    fill_in "Bani saeed tank", with: @aqiq_thrad_tank.bani_saeed_tank
    fill_in "Blue tank", with: @aqiq_thrad_tank.blue_tank
    fill_in "Date", with: @aqiq_thrad_tank.date
    fill_in "Jarab tank", with: @aqiq_thrad_tank.jarab_tank
    fill_in "Mushereef tank", with: @aqiq_thrad_tank.mushereef_tank
    fill_in "Shahbah tank", with: @aqiq_thrad_tank.shahbah_tank
    fill_in "Susabad station tank", with: @aqiq_thrad_tank.susabad_station_tank
    fill_in "Thrad station1 tank", with: @aqiq_thrad_tank.thrad_station1_tank
    fill_in "Thrad station2 tank", with: @aqiq_thrad_tank.thrad_station2_tank
    fill_in "Thrad station3 tank", with: @aqiq_thrad_tank.thrad_station3_tank
    fill_in "Thrad station4 tank", with: @aqiq_thrad_tank.thrad_station4_tank
    fill_in "Thrad station5 tank", with: @aqiq_thrad_tank.thrad_station5_tank
    fill_in "User", with: @aqiq_thrad_tank.user_id
    click_on "Create Aqiq thrad tank"

    assert_text "Aqiq thrad tank was successfully created"
    click_on "Back"
  end

  test "updating a Aqiq thrad tank" do
    visit aqiq_thrad_tanks_url
    click_on "Edit", match: :first

    fill_in "Almzree tank", with: @aqiq_thrad_tank.almzree_tank
    fill_in "Aom gayth tank", with: @aqiq_thrad_tank.aom_gayth_tank
    fill_in "Aqiq station1", with: @aqiq_thrad_tank.aqiq_station1
    fill_in "Aqiq station2", with: @aqiq_thrad_tank.aqiq_station2
    fill_in "Aqiq station3", with: @aqiq_thrad_tank.aqiq_station3
    fill_in "Aqiq station4", with: @aqiq_thrad_tank.aqiq_station4
    fill_in "Aunoq tank", with: @aqiq_thrad_tank.aunoq_tank
    fill_in "Baljurashy tank", with: @aqiq_thrad_tank.baljurashy_tank
    fill_in "Bani dahabyan tank", with: @aqiq_thrad_tank.bani_dahabyan_tank
    fill_in "Bani dhabyan station tank", with: @aqiq_thrad_tank.bani_dhabyan_station_tank
    fill_in "Bani hedah tank", with: @aqiq_thrad_tank.bani_hedah_tank
    fill_in "Bani kaber tank", with: @aqiq_thrad_tank.bani_kaber_tank
    fill_in "Bani saeed tank", with: @aqiq_thrad_tank.bani_saeed_tank
    fill_in "Blue tank", with: @aqiq_thrad_tank.blue_tank
    fill_in "Date", with: @aqiq_thrad_tank.date
    fill_in "Jarab tank", with: @aqiq_thrad_tank.jarab_tank
    fill_in "Mushereef tank", with: @aqiq_thrad_tank.mushereef_tank
    fill_in "Shahbah tank", with: @aqiq_thrad_tank.shahbah_tank
    fill_in "Susabad station tank", with: @aqiq_thrad_tank.susabad_station_tank
    fill_in "Thrad station1 tank", with: @aqiq_thrad_tank.thrad_station1_tank
    fill_in "Thrad station2 tank", with: @aqiq_thrad_tank.thrad_station2_tank
    fill_in "Thrad station3 tank", with: @aqiq_thrad_tank.thrad_station3_tank
    fill_in "Thrad station4 tank", with: @aqiq_thrad_tank.thrad_station4_tank
    fill_in "Thrad station5 tank", with: @aqiq_thrad_tank.thrad_station5_tank
    fill_in "User", with: @aqiq_thrad_tank.user_id
    click_on "Update Aqiq thrad tank"

    assert_text "Aqiq thrad tank was successfully updated"
    click_on "Back"
  end

  test "destroying a Aqiq thrad tank" do
    visit aqiq_thrad_tanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aqiq thrad tank was successfully destroyed"
  end
end
