require "application_system_test_case"

class AlashiabAlsoqiaTest < ApplicationSystemTestCase
  setup do
    @alashiab_alsoqium = alashiab_alsoqia(:one)
  end

  test "visiting the index" do
    visit alashiab_alsoqia_url
    assert_selector "h1", text: "Alashiab Alsoqia"
  end

  test "creating a Alashiab alsoqium" do
    visit alashiab_alsoqia_url
    click_on "New Alashiab Alsoqium"

    fill_in "Alaqeq naqlat", with: @alashiab_alsoqium.alaqeq_naqlat
    fill_in "Alaqeq soqia", with: @alashiab_alsoqium.alaqeq_soqia
    fill_in "Alhalah naqlat", with: @alashiab_alsoqium.alhalah_naqlat
    fill_in "Alhlah soqia", with: @alashiab_alsoqium.alhlah_soqia
    fill_in "Aljnaben naqlat", with: @alashiab_alsoqium.aljnaben_naqlat
    fill_in "Aljnaben soqia", with: @alashiab_alsoqium.aljnaben_soqia
    fill_in "Almosa naqlat", with: @alashiab_alsoqium.almosa_naqlat
    fill_in "Almosa soqia", with: @alashiab_alsoqium.almosa_soqia
    fill_in "Almzre naqlat", with: @alashiab_alsoqium.almzre_naqlat
    fill_in "Almzre soqia", with: @alashiab_alsoqium.almzre_soqia
    fill_in "Alqsmh naqlat", with: @alashiab_alsoqium.alqsmh_naqlat
    fill_in "Alqsmh soqia", with: @alashiab_alsoqium.alqsmh_soqia
    fill_in "Althrawen naqlat", with: @alashiab_alsoqium.althrawen_naqlat
    fill_in "Althrawen soqia", with: @alashiab_alsoqium.althrawen_soqia
    fill_in "Bljorashy naqlat", with: @alashiab_alsoqium.bljorashy_naqlat
    fill_in "Bljorashy soqia", with: @alashiab_alsoqium.bljorashy_soqia
    fill_in "Blkhzmr naqlat", with: @alashiab_alsoqium.blkhzmr_naqlat
    fill_in "Blkhzmr soqia", with: @alashiab_alsoqium.blkhzmr_soqia
    fill_in "Bneadwan naqlat", with: @alashiab_alsoqium.bneadwan_naqlat
    fill_in "Bneadwan soqia", with: @alashiab_alsoqium.bneadwan_soqia
    fill_in "Bnehasan naqlat", with: @alashiab_alsoqium.bnehasan_naqlat
    fill_in "Bnehasan soqia", with: @alashiab_alsoqium.bnehasan_soqia
    fill_in "Bnekbeer naqlat", with: @alashiab_alsoqium.bnekbeer_naqlat
    fill_in "Bnekbeer soqia", with: @alashiab_alsoqium.bnekbeer_soqia
    fill_in "Dos naqlat", with: @alashiab_alsoqium.dos_naqlat
    fill_in "Dos soqia", with: @alashiab_alsoqium.dos_soqia
    fill_in "Ghamidalznad naqlat", with: @alashiab_alsoqium.ghamidalznad_naqlat
    fill_in "Ghamidalznad soqia", with: @alashiab_alsoqium.ghamidalznad_soqia
    fill_in "Kra naqlat", with: @alashiab_alsoqium.kra_naqlat
    fill_in "Kra soqia", with: @alashiab_alsoqium.kra_soqia
    fill_in "Lef naqlat", with: @alashiab_alsoqium.lef_naqlat
    fill_in "Lef soqia", with: @alashiab_alsoqium.lef_soqia
    fill_in "Nbhan naqlat", with: @alashiab_alsoqium.nbhan_naqlat
    fill_in "Nbhan soqia", with: @alashiab_alsoqium.nbhan_soqia
    fill_in "Nkhal naqlat", with: @alashiab_alsoqium.nkhal_naqlat
    fill_in "Nkhal soqia", with: @alashiab_alsoqium.nkhal_soqia
    fill_in "Tota soqia", with: @alashiab_alsoqium.tota_soqia
    fill_in "Total naqlat", with: @alashiab_alsoqium.total_naqlat
    click_on "Create Alashiab alsoqium"

    assert_text "Alashiab alsoqium was successfully created"
    click_on "Back"
  end

  test "updating a Alashiab alsoqium" do
    visit alashiab_alsoqia_url
    click_on "Edit", match: :first

    fill_in "Alaqeq naqlat", with: @alashiab_alsoqium.alaqeq_naqlat
    fill_in "Alaqeq soqia", with: @alashiab_alsoqium.alaqeq_soqia
    fill_in "Alhalah naqlat", with: @alashiab_alsoqium.alhalah_naqlat
    fill_in "Alhlah soqia", with: @alashiab_alsoqium.alhlah_soqia
    fill_in "Aljnaben naqlat", with: @alashiab_alsoqium.aljnaben_naqlat
    fill_in "Aljnaben soqia", with: @alashiab_alsoqium.aljnaben_soqia
    fill_in "Almosa naqlat", with: @alashiab_alsoqium.almosa_naqlat
    fill_in "Almosa soqia", with: @alashiab_alsoqium.almosa_soqia
    fill_in "Almzre naqlat", with: @alashiab_alsoqium.almzre_naqlat
    fill_in "Almzre soqia", with: @alashiab_alsoqium.almzre_soqia
    fill_in "Alqsmh naqlat", with: @alashiab_alsoqium.alqsmh_naqlat
    fill_in "Alqsmh soqia", with: @alashiab_alsoqium.alqsmh_soqia
    fill_in "Althrawen naqlat", with: @alashiab_alsoqium.althrawen_naqlat
    fill_in "Althrawen soqia", with: @alashiab_alsoqium.althrawen_soqia
    fill_in "Bljorashy naqlat", with: @alashiab_alsoqium.bljorashy_naqlat
    fill_in "Bljorashy soqia", with: @alashiab_alsoqium.bljorashy_soqia
    fill_in "Blkhzmr naqlat", with: @alashiab_alsoqium.blkhzmr_naqlat
    fill_in "Blkhzmr soqia", with: @alashiab_alsoqium.blkhzmr_soqia
    fill_in "Bneadwan naqlat", with: @alashiab_alsoqium.bneadwan_naqlat
    fill_in "Bneadwan soqia", with: @alashiab_alsoqium.bneadwan_soqia
    fill_in "Bnehasan naqlat", with: @alashiab_alsoqium.bnehasan_naqlat
    fill_in "Bnehasan soqia", with: @alashiab_alsoqium.bnehasan_soqia
    fill_in "Bnekbeer naqlat", with: @alashiab_alsoqium.bnekbeer_naqlat
    fill_in "Bnekbeer soqia", with: @alashiab_alsoqium.bnekbeer_soqia
    fill_in "Dos naqlat", with: @alashiab_alsoqium.dos_naqlat
    fill_in "Dos soqia", with: @alashiab_alsoqium.dos_soqia
    fill_in "Ghamidalznad naqlat", with: @alashiab_alsoqium.ghamidalznad_naqlat
    fill_in "Ghamidalznad soqia", with: @alashiab_alsoqium.ghamidalznad_soqia
    fill_in "Kra naqlat", with: @alashiab_alsoqium.kra_naqlat
    fill_in "Kra soqia", with: @alashiab_alsoqium.kra_soqia
    fill_in "Lef naqlat", with: @alashiab_alsoqium.lef_naqlat
    fill_in "Lef soqia", with: @alashiab_alsoqium.lef_soqia
    fill_in "Nbhan naqlat", with: @alashiab_alsoqium.nbhan_naqlat
    fill_in "Nbhan soqia", with: @alashiab_alsoqium.nbhan_soqia
    fill_in "Nkhal naqlat", with: @alashiab_alsoqium.nkhal_naqlat
    fill_in "Nkhal soqia", with: @alashiab_alsoqium.nkhal_soqia
    fill_in "Tota soqia", with: @alashiab_alsoqium.tota_soqia
    fill_in "Total naqlat", with: @alashiab_alsoqium.total_naqlat
    click_on "Update Alashiab alsoqium"

    assert_text "Alashiab alsoqium was successfully updated"
    click_on "Back"
  end

  test "destroying a Alashiab alsoqium" do
    visit alashiab_alsoqia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alashiab alsoqium was successfully destroyed"
  end
end
