require "application_system_test_case"

class WaterLiterDeliveredsTest < ApplicationSystemTestCase
  setup do
    @water_liter_delivered = water_liter_delivereds(:one)
  end

  test "visiting the index" do
    visit water_liter_delivereds_url
    assert_selector "h1", text: "Water Liter Delivereds"
  end

  test "creating a Water liter delivered" do
    visit water_liter_delivereds_url
    click_on "New Water Liter Delivered"

    fill_in "Date", with: @water_liter_delivered.date
    fill_in "District", with: @water_liter_delivered.district_id
    fill_in "Quantity", with: @water_liter_delivered.quantity
    fill_in "User", with: @water_liter_delivered.user_id
    click_on "Create Water liter delivered"

    assert_text "Water liter delivered was successfully created"
    click_on "Back"
  end

  test "updating a Water liter delivered" do
    visit water_liter_delivereds_url
    click_on "Edit", match: :first

    fill_in "Date", with: @water_liter_delivered.date
    fill_in "District", with: @water_liter_delivered.district_id
    fill_in "Quantity", with: @water_liter_delivered.quantity
    fill_in "User", with: @water_liter_delivered.user_id
    click_on "Update Water liter delivered"

    assert_text "Water liter delivered was successfully updated"
    click_on "Back"
  end

  test "destroying a Water liter delivered" do
    visit water_liter_delivereds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Water liter delivered was successfully destroyed"
  end
end
