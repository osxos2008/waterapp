require "application_system_test_case"

class SmallprojectsTest < ApplicationSystemTestCase
  setup do
    @smallproject = smallprojects(:one)
  end

  test "visiting the index" do
    visit smallprojects_url
    assert_selector "h1", text: "Smallprojects"
  end

  test "creating a Smallproject" do
    visit smallprojects_url
    click_on "New Smallproject"

    fill_in "Alaqeq", with: @smallproject.alaqeq
    fill_in "Albaha", with: @smallproject.albaha
    fill_in "Alhgrah", with: @smallproject.alhgrah
    fill_in "Almandaq", with: @smallproject.almandaq
    fill_in "Almekhwah", with: @smallproject.almekhwah
    fill_in "Alqora", with: @smallproject.alqora
    fill_in "Bljorashy", with: @smallproject.bljorashy
    fill_in "Date", with: @smallproject.date
    fill_in "Detailed production", with: @smallproject.detailed_production
    fill_in "Product btat", with: @smallproject.product_btat
    fill_in "Product thrad", with: @smallproject.product_thrad
    fill_in "Product total", with: @smallproject.product_total
    fill_in "Qolwah", with: @smallproject.qolwah
    fill_in "Smallproject", with: @smallproject.smallproject
    fill_in "Total wo thrad btat", with: @smallproject.total_wo_thrad_btat
    fill_in "User", with: @smallproject.user_id
    click_on "Create Smallproject"

    assert_text "Smallproject was successfully created"
    click_on "Back"
  end

  test "updating a Smallproject" do
    visit smallprojects_url
    click_on "Edit", match: :first

    fill_in "Alaqeq", with: @smallproject.alaqeq
    fill_in "Albaha", with: @smallproject.albaha
    fill_in "Alhgrah", with: @smallproject.alhgrah
    fill_in "Almandaq", with: @smallproject.almandaq
    fill_in "Almekhwah", with: @smallproject.almekhwah
    fill_in "Alqora", with: @smallproject.alqora
    fill_in "Bljorashy", with: @smallproject.bljorashy
    fill_in "Date", with: @smallproject.date
    fill_in "Detailed production", with: @smallproject.detailed_production
    fill_in "Product btat", with: @smallproject.product_btat
    fill_in "Product thrad", with: @smallproject.product_thrad
    fill_in "Product total", with: @smallproject.product_total
    fill_in "Qolwah", with: @smallproject.qolwah
    fill_in "Smallproject", with: @smallproject.smallproject
    fill_in "Total wo thrad btat", with: @smallproject.total_wo_thrad_btat
    fill_in "User", with: @smallproject.user_id
    click_on "Update Smallproject"

    assert_text "Smallproject was successfully updated"
    click_on "Back"
  end

  test "destroying a Smallproject" do
    visit smallprojects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smallproject was successfully destroyed"
  end
end
