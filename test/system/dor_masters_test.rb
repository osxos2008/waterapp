require "application_system_test_case"

class DorMastersTest < ApplicationSystemTestCase
  setup do
    @dor_master = dor_masters(:one)
  end

  test "visiting the index" do
    visit dor_masters_url
    assert_selector "h1", text: "Dor Masters"
  end

  test "creating a Dor master" do
    visit dor_masters_url
    click_on "New Dor Master"

    fill_in "Date", with: @dor_master.date
    fill_in "User", with: @dor_master.user_id
    click_on "Create Dor master"

    assert_text "Dor master was successfully created"
    click_on "Back"
  end

  test "updating a Dor master" do
    visit dor_masters_url
    click_on "Edit", match: :first

    fill_in "Date", with: @dor_master.date
    fill_in "User", with: @dor_master.user_id
    click_on "Update Dor master"

    assert_text "Dor master was successfully updated"
    click_on "Back"
  end

  test "destroying a Dor master" do
    visit dor_masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dor master was successfully destroyed"
  end
end
