require "application_system_test_case"

class AljnabensTest < ApplicationSystemTestCase
  setup do
    @aljnaben = aljnabens(:one)
  end

  test "visiting the index" do
    visit aljnabens_url
    assert_selector "h1", text: "Aljnabens"
  end

  test "creating a Aljnaben" do
    visit aljnabens_url
    click_on "New Aljnaben"

    fill_in "Abdaan", with: @aljnaben.abdaan
    fill_in "Alfrya", with: @aljnaben.alfrya
    fill_in "Aljbail aljnaben", with: @aljnaben.aljbail_aljnaben
    fill_in "Almnahel", with: @aljnaben.almnahel
    fill_in "Alqame", with: @aljnaben.alqame
    fill_in "Alrahwah", with: @aljnaben.alrahwah
    fill_in "Alrahwah well", with: @aljnaben.alrahwah_Well
    fill_in "Date", with: @aljnaben.date
    fill_in "Distribution", with: @aljnaben.distribution
    fill_in "Distribution total", with: @aljnaben.distribution_total
    fill_in "Networks", with: @aljnaben.networks
    fill_in "Networks total", with: @aljnaben.networks_total
    fill_in "Product", with: @aljnaben.product
    fill_in "Product total", with: @aljnaben.product_total
    fill_in "Purification station", with: @aljnaben.purification_station
    fill_in "Quantity sent from desalination", with: @aljnaben.quantity_sent_from_desalination
    fill_in "Shra", with: @aljnaben.shra
    fill_in "User", with: @aljnaben.user_id
    click_on "Create Aljnaben"

    assert_text "Aljnaben was successfully created"
    click_on "Back"
  end

  test "updating a Aljnaben" do
    visit aljnabens_url
    click_on "Edit", match: :first

    fill_in "Abdaan", with: @aljnaben.abdaan
    fill_in "Alfrya", with: @aljnaben.alfrya
    fill_in "Aljbail aljnaben", with: @aljnaben.aljbail_aljnaben
    fill_in "Almnahel", with: @aljnaben.almnahel
    fill_in "Alqame", with: @aljnaben.alqame
    fill_in "Alrahwah", with: @aljnaben.alrahwah
    fill_in "Alrahwah well", with: @aljnaben.alrahwah_Well
    fill_in "Date", with: @aljnaben.date
    fill_in "Distribution", with: @aljnaben.distribution
    fill_in "Distribution total", with: @aljnaben.distribution_total
    fill_in "Networks", with: @aljnaben.networks
    fill_in "Networks total", with: @aljnaben.networks_total
    fill_in "Product", with: @aljnaben.product
    fill_in "Product total", with: @aljnaben.product_total
    fill_in "Purification station", with: @aljnaben.purification_station
    fill_in "Quantity sent from desalination", with: @aljnaben.quantity_sent_from_desalination
    fill_in "Shra", with: @aljnaben.shra
    fill_in "User", with: @aljnaben.user_id
    click_on "Update Aljnaben"

    assert_text "Aljnaben was successfully updated"
    click_on "Back"
  end

  test "destroying a Aljnaben" do
    visit aljnabens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aljnaben was successfully destroyed"
  end
end
