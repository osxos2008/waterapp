require "application_system_test_case"

class AradahsTest < ApplicationSystemTestCase
  setup do
    @aradah = aradahs(:one)
  end

  test "visiting the index" do
    visit aradahs_url
    assert_selector "h1", text: "Aradahs"
  end

  test "creating a Aradah" do
    visit aradahs_url
    click_on "New Aradah"

    fill_in "Almnahel", with: @aradah.almnahel
    fill_in "Bnenet blkhzmr", with: @aradah.bnenet_blkhzmr
    fill_in "Bnenet bnehasan", with: @aradah.bnenet_bnehasan
    fill_in "Bnenet total", with: @aradah.bnenet_total
    fill_in "Bneshep blkhzmr", with: @aradah.bneshep_blkhzmr
    fill_in "Bneshep bnehasan", with: @aradah.bneshep_bnehasan
    fill_in "Bneshep total", with: @aradah.bneshep_total
    fill_in "Bnet almosa", with: @aradah.bnet_almosa
    fill_in "Bnet qrnthbe", with: @aradah.bnet_qrnthbe
    fill_in "Bnet total", with: @aradah.bnet_total
    fill_in "Bshep almosa", with: @aradah.bshep_almosa
    fill_in "Date", with: @aradah.date
    fill_in "Distribution", with: @aradah.distribution
    fill_in "Distripution total", with: @aradah.distripution_total
    fill_in "From thrawen tank", with: @aradah.from_thrawen_tank
    fill_in "Mnahel total", with: @aradah.mnahel_total
    fill_in "Mnet alhalah", with: @aradah.mnet_alhalah
    fill_in "Mnet aljawfaa", with: @aradah.mnet_aljawfaa
    fill_in "Mnet alkahla1", with: @aradah.mnet_alkahla1
    fill_in "Mnet alkahla2", with: @aradah.mnet_alkahla2
    fill_in "Mnet alkhlb", with: @aradah.mnet_alkhlb
    fill_in "Mnet blhkm", with: @aradah.mnet_blhkm
    fill_in "Mnet dos", with: @aradah.mnet_dos
    fill_in "Mnet sehan", with: @aradah.mnet_sehan
    fill_in "Mnet total", with: @aradah.mnet_total
    fill_in "Mrawah", with: @aradah.mrawah
    fill_in "Mshep alhalah", with: @aradah.mshep_alhalah
    fill_in "Mshep dos", with: @aradah.mshep_dos
    fill_in "Mshep total", with: @aradah.mshep_total
    fill_in "Network total", with: @aradah.network_total
    fill_in "Networks", with: @aradah.networks
    fill_in "Product", with: @aradah.product
    fill_in "Product total", with: @aradah.product_total
    fill_in "Qnet alqsmh", with: @aradah.qnet_alqsmh
    fill_in "Qnet althrawen", with: @aradah.qnet_althrawen
    fill_in "Qnet althrawen alatawlah", with: @aradah.qnet_althrawen_alatawlah
    fill_in "Qnet bedah", with: @aradah.qnet_bedah
    fill_in "Qnet bneedwan1", with: @aradah.qnet_bneedwan1
    fill_in "Qnet bneedwan2", with: @aradah.qnet_bneedwan2
    fill_in "Qnet mashoqah", with: @aradah.qnet_mashoqah
    fill_in "Qnet total", with: @aradah.qnet_total
    fill_in "Qshep alqsmh", with: @aradah.qshep_alqsmh
    fill_in "Qshep althrawen", with: @aradah.qshep_althrawen
    fill_in "Qshep bneodwan", with: @aradah.qshep_bneodwan
    fill_in "Qshep mashoqah", with: @aradah.qshep_mashoqah
    fill_in "Qshep nkhal", with: @aradah.qshep_nkhal
    fill_in "Qshep total", with: @aradah.qshep_total
    fill_in "User", with: @aradah.user_id
    fill_in "Wells", with: @aradah.wells
    click_on "Create Aradah"

    assert_text "Aradah was successfully created"
    click_on "Back"
  end

  test "updating a Aradah" do
    visit aradahs_url
    click_on "Edit", match: :first

    fill_in "Almnahel", with: @aradah.almnahel
    fill_in "Bnenet blkhzmr", with: @aradah.bnenet_blkhzmr
    fill_in "Bnenet bnehasan", with: @aradah.bnenet_bnehasan
    fill_in "Bnenet total", with: @aradah.bnenet_total
    fill_in "Bneshep blkhzmr", with: @aradah.bneshep_blkhzmr
    fill_in "Bneshep bnehasan", with: @aradah.bneshep_bnehasan
    fill_in "Bneshep total", with: @aradah.bneshep_total
    fill_in "Bnet almosa", with: @aradah.bnet_almosa
    fill_in "Bnet qrnthbe", with: @aradah.bnet_qrnthbe
    fill_in "Bnet total", with: @aradah.bnet_total
    fill_in "Bshep almosa", with: @aradah.bshep_almosa
    fill_in "Date", with: @aradah.date
    fill_in "Distribution", with: @aradah.distribution
    fill_in "Distripution total", with: @aradah.distripution_total
    fill_in "From thrawen tank", with: @aradah.from_thrawen_tank
    fill_in "Mnahel total", with: @aradah.mnahel_total
    fill_in "Mnet alhalah", with: @aradah.mnet_alhalah
    fill_in "Mnet aljawfaa", with: @aradah.mnet_aljawfaa
    fill_in "Mnet alkahla1", with: @aradah.mnet_alkahla1
    fill_in "Mnet alkahla2", with: @aradah.mnet_alkahla2
    fill_in "Mnet alkhlb", with: @aradah.mnet_alkhlb
    fill_in "Mnet blhkm", with: @aradah.mnet_blhkm
    fill_in "Mnet dos", with: @aradah.mnet_dos
    fill_in "Mnet sehan", with: @aradah.mnet_sehan
    fill_in "Mnet total", with: @aradah.mnet_total
    fill_in "Mrawah", with: @aradah.mrawah
    fill_in "Mshep alhalah", with: @aradah.mshep_alhalah
    fill_in "Mshep dos", with: @aradah.mshep_dos
    fill_in "Mshep total", with: @aradah.mshep_total
    fill_in "Network total", with: @aradah.network_total
    fill_in "Networks", with: @aradah.networks
    fill_in "Product", with: @aradah.product
    fill_in "Product total", with: @aradah.product_total
    fill_in "Qnet alqsmh", with: @aradah.qnet_alqsmh
    fill_in "Qnet althrawen", with: @aradah.qnet_althrawen
    fill_in "Qnet althrawen alatawlah", with: @aradah.qnet_althrawen_alatawlah
    fill_in "Qnet bedah", with: @aradah.qnet_bedah
    fill_in "Qnet bneedwan1", with: @aradah.qnet_bneedwan1
    fill_in "Qnet bneedwan2", with: @aradah.qnet_bneedwan2
    fill_in "Qnet mashoqah", with: @aradah.qnet_mashoqah
    fill_in "Qnet total", with: @aradah.qnet_total
    fill_in "Qshep alqsmh", with: @aradah.qshep_alqsmh
    fill_in "Qshep althrawen", with: @aradah.qshep_althrawen
    fill_in "Qshep bneodwan", with: @aradah.qshep_bneodwan
    fill_in "Qshep mashoqah", with: @aradah.qshep_mashoqah
    fill_in "Qshep nkhal", with: @aradah.qshep_nkhal
    fill_in "Qshep total", with: @aradah.qshep_total
    fill_in "User", with: @aradah.user_id
    fill_in "Wells", with: @aradah.wells
    click_on "Update Aradah"

    assert_text "Aradah was successfully updated"
    click_on "Back"
  end

  test "destroying a Aradah" do
    visit aradahs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aradah was successfully destroyed"
  end
end
