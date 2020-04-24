require "application_system_test_case"

class YabsTest < ApplicationSystemTestCase
  setup do
    @yab = yabs(:one)
  end

  test "visiting the index" do
    visit yabs_url
    assert_selector "h1", text: "Yabs"
  end

  test "creating a Yab" do
    visit yabs_url
    click_on "New Yab"

    fill_in "Batat distribution", with: @yab.batat_distribution
    fill_in "Date", with: @yab.date
    fill_in "User", with: @yab.user_id
    fill_in "Yabs distribution", with: @yab.yabs_distribution
    fill_in "Yabs produce", with: @yab.yabs_produce
    fill_in "Yabs tank", with: @yab.yabs_tank
    click_on "Create Yab"

    assert_text "Yab was successfully created"
    click_on "Back"
  end

  test "updating a Yab" do
    visit yabs_url
    click_on "Edit", match: :first

    fill_in "Batat distribution", with: @yab.batat_distribution
    fill_in "Date", with: @yab.date
    fill_in "User", with: @yab.user_id
    fill_in "Yabs distribution", with: @yab.yabs_distribution
    fill_in "Yabs produce", with: @yab.yabs_produce
    fill_in "Yabs tank", with: @yab.yabs_tank
    click_on "Update Yab"

    assert_text "Yab was successfully updated"
    click_on "Back"
  end

  test "destroying a Yab" do
    visit yabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yab was successfully destroyed"
  end
end
