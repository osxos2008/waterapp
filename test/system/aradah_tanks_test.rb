require "application_system_test_case"

class AradahTanksTest < ApplicationSystemTestCase
  setup do
    @aradah_tank = aradah_tanks(:one)
  end

  test "visiting the index" do
    visit aradah_tanks_url
    assert_selector "h1", text: "Aradah Tanks"
  end

  test "creating a Aradah tank" do
    visit aradah_tanks_url
    click_on "New Aradah Tank"

    fill_in "Al musa tank", with: @aradah_tank.al_musa_tank
    fill_in "Alhalah tank", with: @aradah_tank.alhalah_tank
    fill_in "Aljwfaa tank", with: @aradah_tank.aljwfaa_tank
    fill_in "Alkahelah tank", with: @aradah_tank.alkahelah_tank
    fill_in "Alqalab tank", with: @aradah_tank.alqalab_tank
    fill_in "Alqesma plant4 tank", with: @aradah_tank.alqesma_plant4_tank
    fill_in "Aradah plant tank", with: @aradah_tank.aradah_plant_tank
    fill_in "Balhakam tank", with: @aradah_tank.balhakam_tank
    fill_in "Balqazmar tank", with: @aradah_tank.balqazmar_tank
    fill_in "Bani adwan tank", with: @aradah_tank.bani_adwan_tank
    fill_in "Bani hasan tank", with: @aradah_tank.bani_hasan_tank
    fill_in "Bedah tank", with: @aradah_tank.bedah_tank
    fill_in "Date", with: @aradah_tank.date
    fill_in "Daws tank", with: @aradah_tank.daws_tank
    fill_in "Marawah tank", with: @aradah_tank.marawah_tank
    fill_in "Mashoqa tank", with: @aradah_tank.mashoqa_tank
    fill_in "Mashoqah plant2 tank", with: @aradah_tank.mashoqah_plant2_tank
    fill_in "Naqal plant1 tnak", with: @aradah_tank.naqal_plant1_tnak
    fill_in "Qaran dabi tank", with: @aradah_tank.qaran_dabi_tank
    fill_in "Ras manhal plant3 tank", with: @aradah_tank.ras_manhal_plant3_tank
    fill_in "Sayhan tank", with: @aradah_tank.sayhan_tank
    fill_in "Thraween plant5 tank", with: @aradah_tank.thraween_plant5_tank
    fill_in "User", with: @aradah_tank.user_id
    click_on "Create Aradah tank"

    assert_text "Aradah tank was successfully created"
    click_on "Back"
  end

  test "updating a Aradah tank" do
    visit aradah_tanks_url
    click_on "Edit", match: :first

    fill_in "Al musa tank", with: @aradah_tank.al_musa_tank
    fill_in "Alhalah tank", with: @aradah_tank.alhalah_tank
    fill_in "Aljwfaa tank", with: @aradah_tank.aljwfaa_tank
    fill_in "Alkahelah tank", with: @aradah_tank.alkahelah_tank
    fill_in "Alqalab tank", with: @aradah_tank.alqalab_tank
    fill_in "Alqesma plant4 tank", with: @aradah_tank.alqesma_plant4_tank
    fill_in "Aradah plant tank", with: @aradah_tank.aradah_plant_tank
    fill_in "Balhakam tank", with: @aradah_tank.balhakam_tank
    fill_in "Balqazmar tank", with: @aradah_tank.balqazmar_tank
    fill_in "Bani adwan tank", with: @aradah_tank.bani_adwan_tank
    fill_in "Bani hasan tank", with: @aradah_tank.bani_hasan_tank
    fill_in "Bedah tank", with: @aradah_tank.bedah_tank
    fill_in "Date", with: @aradah_tank.date
    fill_in "Daws tank", with: @aradah_tank.daws_tank
    fill_in "Marawah tank", with: @aradah_tank.marawah_tank
    fill_in "Mashoqa tank", with: @aradah_tank.mashoqa_tank
    fill_in "Mashoqah plant2 tank", with: @aradah_tank.mashoqah_plant2_tank
    fill_in "Naqal plant1 tnak", with: @aradah_tank.naqal_plant1_tnak
    fill_in "Qaran dabi tank", with: @aradah_tank.qaran_dabi_tank
    fill_in "Ras manhal plant3 tank", with: @aradah_tank.ras_manhal_plant3_tank
    fill_in "Sayhan tank", with: @aradah_tank.sayhan_tank
    fill_in "Thraween plant5 tank", with: @aradah_tank.thraween_plant5_tank
    fill_in "User", with: @aradah_tank.user_id
    click_on "Update Aradah tank"

    assert_text "Aradah tank was successfully updated"
    click_on "Back"
  end

  test "destroying a Aradah tank" do
    visit aradah_tanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aradah tank was successfully destroyed"
  end
end
