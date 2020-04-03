require "application_system_test_case"

class TohamhalshamelsTest < ApplicationSystemTestCase
  setup do
    @tohamhalshamel = tohamhalshamels(:one)
  end

  test "visiting the index" do
    visit tohamhalshamels_url
    assert_selector "h1", text: "Tohamhalshamels"
  end

  test "creating a Tohamhalshamel" do
    visit tohamhalshamels_url
    click_on "New Tohamhalshamel"

    fill_in "Alahsabiawell almekhwah", with: @tohamhalshamel.alahsabiawell_almekhwah
    fill_in "Algreen", with: @tohamhalshamel.algreen
    fill_in "Alhjrah", with: @tohamhalshamel.alhjrah
    fill_in "Almekhwah", with: @tohamhalshamel.almekhwah
    fill_in "Almnahel", with: @tohamhalshamel.almnahel
    fill_in "Almnahl total", with: @tohamhalshamel.almnahl_total
    fill_in "Almswdah", with: @tohamhalshamel.almswdah
    fill_in "Alrmedah", with: @tohamhalshamel.alrmedah
    fill_in "Alrmedahwell", with: @tohamhalshamel.alrmedahwell
    fill_in "Bneatta", with: @tohamhalshamel.bneatta
    fill_in "Date", with: @tohamhalshamel.date
    fill_in "Distribution", with: @tohamhalshamel.distribution
    fill_in "Distribution total", with: @tohamhalshamel.distribution_total
    fill_in "Doqahwell qlwah", with: @tohamhalshamel.doqahwell_qlwah
    fill_in "Doqatabdulhamed", with: @tohamhalshamel.doqatabdulhamed
    fill_in "Doqatabdulhamedwell", with: @tohamhalshamel.doqatabdulhamedwell
    fill_in "Elepwell alhjrah", with: @tohamhalshamel.elepwell_alhjrah
    fill_in "Ghamidalznad", with: @tohamhalshamel.ghamidalznad
    fill_in "Mmna", with: @tohamhalshamel.mmna
    fill_in "Nawan", with: @tohamhalshamel.nawan
    fill_in "Nera", with: @tohamhalshamel.nera
    fill_in "Networks", with: @tohamhalshamel.networks
    fill_in "Networks total", with: @tohamhalshamel.networks_total
    fill_in "Nsbah", with: @tohamhalshamel.nsbah
    fill_in "Product", with: @tohamhalshamel.product
    fill_in "Product total", with: @tohamhalshamel.product_total
    fill_in "Qlwah", with: @tohamhalshamel.qlwah
    fill_in "Shmalalmekhwah", with: @tohamhalshamel.shmalalmekhwah
    fill_in "User", with: @tohamhalshamel.user_id
    click_on "Create Tohamhalshamel"

    assert_text "Tohamhalshamel was successfully created"
    click_on "Back"
  end

  test "updating a Tohamhalshamel" do
    visit tohamhalshamels_url
    click_on "Edit", match: :first

    fill_in "Alahsabiawell almekhwah", with: @tohamhalshamel.alahsabiawell_almekhwah
    fill_in "Algreen", with: @tohamhalshamel.algreen
    fill_in "Alhjrah", with: @tohamhalshamel.alhjrah
    fill_in "Almekhwah", with: @tohamhalshamel.almekhwah
    fill_in "Almnahel", with: @tohamhalshamel.almnahel
    fill_in "Almnahl total", with: @tohamhalshamel.almnahl_total
    fill_in "Almswdah", with: @tohamhalshamel.almswdah
    fill_in "Alrmedah", with: @tohamhalshamel.alrmedah
    fill_in "Alrmedahwell", with: @tohamhalshamel.alrmedahwell
    fill_in "Bneatta", with: @tohamhalshamel.bneatta
    fill_in "Date", with: @tohamhalshamel.date
    fill_in "Distribution", with: @tohamhalshamel.distribution
    fill_in "Distribution total", with: @tohamhalshamel.distribution_total
    fill_in "Doqahwell qlwah", with: @tohamhalshamel.doqahwell_qlwah
    fill_in "Doqatabdulhamed", with: @tohamhalshamel.doqatabdulhamed
    fill_in "Doqatabdulhamedwell", with: @tohamhalshamel.doqatabdulhamedwell
    fill_in "Elepwell alhjrah", with: @tohamhalshamel.elepwell_alhjrah
    fill_in "Ghamidalznad", with: @tohamhalshamel.ghamidalznad
    fill_in "Mmna", with: @tohamhalshamel.mmna
    fill_in "Nawan", with: @tohamhalshamel.nawan
    fill_in "Nera", with: @tohamhalshamel.nera
    fill_in "Networks", with: @tohamhalshamel.networks
    fill_in "Networks total", with: @tohamhalshamel.networks_total
    fill_in "Nsbah", with: @tohamhalshamel.nsbah
    fill_in "Product", with: @tohamhalshamel.product
    fill_in "Product total", with: @tohamhalshamel.product_total
    fill_in "Qlwah", with: @tohamhalshamel.qlwah
    fill_in "Shmalalmekhwah", with: @tohamhalshamel.shmalalmekhwah
    fill_in "User", with: @tohamhalshamel.user_id
    click_on "Update Tohamhalshamel"

    assert_text "Tohamhalshamel was successfully updated"
    click_on "Back"
  end

  test "destroying a Tohamhalshamel" do
    visit tohamhalshamels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tohamhalshamel was successfully destroyed"
  end
end
