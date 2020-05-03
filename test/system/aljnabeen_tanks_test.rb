require "application_system_test_case"

class AljnabeenTanksTest < ApplicationSystemTestCase
  setup do
    @aljnabeen_tank = aljnabeen_tanks(:one)
  end

  test "visiting the index" do
    visit aljnabeen_tanks_url
    assert_selector "h1", text: "Aljnabeen Tanks"
  end

  test "creating a Aljnabeen tank" do
    visit aljnabeen_tanks_url
    click_on "New Aljnabeen Tank"

    fill_in "Abdan tank", with: @aljnabeen_tank.abdan_tank
    fill_in "Alfryh tank", with: @aljnabeen_tank.alfryh_tank
    fill_in "Algema tank", with: @aljnabeen_tank.algema_tank
    fill_in "Aljbeel tank", with: @aljnabeen_tank.aljbeel_Tank
    fill_in "Almontag tank", with: @aljnabeen_tank.almontag_tank
    fill_in "Alrahwa tank", with: @aljnabeen_tank.alrahwa_tank
    fill_in "Date", with: @aljnabeen_tank.date
    fill_in "Shra tank", with: @aljnabeen_tank.shra_tank
    fill_in "User", with: @aljnabeen_tank.user_id
    click_on "Create Aljnabeen tank"

    assert_text "Aljnabeen tank was successfully created"
    click_on "Back"
  end

  test "updating a Aljnabeen tank" do
    visit aljnabeen_tanks_url
    click_on "Edit", match: :first

    fill_in "Abdan tank", with: @aljnabeen_tank.abdan_tank
    fill_in "Alfryh tank", with: @aljnabeen_tank.alfryh_tank
    fill_in "Algema tank", with: @aljnabeen_tank.algema_tank
    fill_in "Aljbeel tank", with: @aljnabeen_tank.aljbeel_Tank
    fill_in "Almontag tank", with: @aljnabeen_tank.almontag_tank
    fill_in "Alrahwa tank", with: @aljnabeen_tank.alrahwa_tank
    fill_in "Date", with: @aljnabeen_tank.date
    fill_in "Shra tank", with: @aljnabeen_tank.shra_tank
    fill_in "User", with: @aljnabeen_tank.user_id
    click_on "Update Aljnabeen tank"

    assert_text "Aljnabeen tank was successfully updated"
    click_on "Back"
  end

  test "destroying a Aljnabeen tank" do
    visit aljnabeen_tanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aljnabeen tank was successfully destroyed"
  end
end
