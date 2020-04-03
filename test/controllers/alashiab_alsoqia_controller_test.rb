require 'test_helper'

class AlashiabAlsoqiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alashiab_alsoqium = alashiab_alsoqia(:one)
  end

  test "should get index" do
    get alashiab_alsoqia_url
    assert_response :success
  end

  test "should get new" do
    get new_alashiab_alsoqium_url
    assert_response :success
  end

  test "should create alashiab_alsoqium" do
    assert_difference('AlashiabAlsoqium.count') do
      post alashiab_alsoqia_url, params: { alashiab_alsoqium: { alaqeq_naqlat: @alashiab_alsoqium.alaqeq_naqlat, alaqeq_soqia: @alashiab_alsoqium.alaqeq_soqia, alhalah_naqlat: @alashiab_alsoqium.alhalah_naqlat, alhlah_soqia: @alashiab_alsoqium.alhlah_soqia, aljnaben_naqlat: @alashiab_alsoqium.aljnaben_naqlat, aljnaben_soqia: @alashiab_alsoqium.aljnaben_soqia, almosa_naqlat: @alashiab_alsoqium.almosa_naqlat, almosa_soqia: @alashiab_alsoqium.almosa_soqia, almzre_naqlat: @alashiab_alsoqium.almzre_naqlat, almzre_soqia: @alashiab_alsoqium.almzre_soqia, alqsmh_naqlat: @alashiab_alsoqium.alqsmh_naqlat, alqsmh_soqia: @alashiab_alsoqium.alqsmh_soqia, althrawen_naqlat: @alashiab_alsoqium.althrawen_naqlat, althrawen_soqia: @alashiab_alsoqium.althrawen_soqia, bljorashy_naqlat: @alashiab_alsoqium.bljorashy_naqlat, bljorashy_soqia: @alashiab_alsoqium.bljorashy_soqia, blkhzmr_naqlat: @alashiab_alsoqium.blkhzmr_naqlat, blkhzmr_soqia: @alashiab_alsoqium.blkhzmr_soqia, bneadwan_naqlat: @alashiab_alsoqium.bneadwan_naqlat, bneadwan_soqia: @alashiab_alsoqium.bneadwan_soqia, bnehasan_naqlat: @alashiab_alsoqium.bnehasan_naqlat, bnehasan_soqia: @alashiab_alsoqium.bnehasan_soqia, bnekbeer_naqlat: @alashiab_alsoqium.bnekbeer_naqlat, bnekbeer_soqia: @alashiab_alsoqium.bnekbeer_soqia, dos_naqlat: @alashiab_alsoqium.dos_naqlat, dos_soqia: @alashiab_alsoqium.dos_soqia, ghamidalznad_naqlat: @alashiab_alsoqium.ghamidalznad_naqlat, ghamidalznad_soqia: @alashiab_alsoqium.ghamidalznad_soqia, kra_naqlat: @alashiab_alsoqium.kra_naqlat, kra_soqia: @alashiab_alsoqium.kra_soqia, lef_naqlat: @alashiab_alsoqium.lef_naqlat, lef_soqia: @alashiab_alsoqium.lef_soqia, nbhan_naqlat: @alashiab_alsoqium.nbhan_naqlat, nbhan_soqia: @alashiab_alsoqium.nbhan_soqia, nkhal_naqlat: @alashiab_alsoqium.nkhal_naqlat, nkhal_soqia: @alashiab_alsoqium.nkhal_soqia, tota_soqia: @alashiab_alsoqium.tota_soqia, total_naqlat: @alashiab_alsoqium.total_naqlat } }
    end

    assert_redirected_to alashiab_alsoqium_url(AlashiabAlsoqium.last)
  end

  test "should show alashiab_alsoqium" do
    get alashiab_alsoqium_url(@alashiab_alsoqium)
    assert_response :success
  end

  test "should get edit" do
    get edit_alashiab_alsoqium_url(@alashiab_alsoqium)
    assert_response :success
  end

  test "should update alashiab_alsoqium" do
    patch alashiab_alsoqium_url(@alashiab_alsoqium), params: { alashiab_alsoqium: { alaqeq_naqlat: @alashiab_alsoqium.alaqeq_naqlat, alaqeq_soqia: @alashiab_alsoqium.alaqeq_soqia, alhalah_naqlat: @alashiab_alsoqium.alhalah_naqlat, alhlah_soqia: @alashiab_alsoqium.alhlah_soqia, aljnaben_naqlat: @alashiab_alsoqium.aljnaben_naqlat, aljnaben_soqia: @alashiab_alsoqium.aljnaben_soqia, almosa_naqlat: @alashiab_alsoqium.almosa_naqlat, almosa_soqia: @alashiab_alsoqium.almosa_soqia, almzre_naqlat: @alashiab_alsoqium.almzre_naqlat, almzre_soqia: @alashiab_alsoqium.almzre_soqia, alqsmh_naqlat: @alashiab_alsoqium.alqsmh_naqlat, alqsmh_soqia: @alashiab_alsoqium.alqsmh_soqia, althrawen_naqlat: @alashiab_alsoqium.althrawen_naqlat, althrawen_soqia: @alashiab_alsoqium.althrawen_soqia, bljorashy_naqlat: @alashiab_alsoqium.bljorashy_naqlat, bljorashy_soqia: @alashiab_alsoqium.bljorashy_soqia, blkhzmr_naqlat: @alashiab_alsoqium.blkhzmr_naqlat, blkhzmr_soqia: @alashiab_alsoqium.blkhzmr_soqia, bneadwan_naqlat: @alashiab_alsoqium.bneadwan_naqlat, bneadwan_soqia: @alashiab_alsoqium.bneadwan_soqia, bnehasan_naqlat: @alashiab_alsoqium.bnehasan_naqlat, bnehasan_soqia: @alashiab_alsoqium.bnehasan_soqia, bnekbeer_naqlat: @alashiab_alsoqium.bnekbeer_naqlat, bnekbeer_soqia: @alashiab_alsoqium.bnekbeer_soqia, dos_naqlat: @alashiab_alsoqium.dos_naqlat, dos_soqia: @alashiab_alsoqium.dos_soqia, ghamidalznad_naqlat: @alashiab_alsoqium.ghamidalznad_naqlat, ghamidalznad_soqia: @alashiab_alsoqium.ghamidalznad_soqia, kra_naqlat: @alashiab_alsoqium.kra_naqlat, kra_soqia: @alashiab_alsoqium.kra_soqia, lef_naqlat: @alashiab_alsoqium.lef_naqlat, lef_soqia: @alashiab_alsoqium.lef_soqia, nbhan_naqlat: @alashiab_alsoqium.nbhan_naqlat, nbhan_soqia: @alashiab_alsoqium.nbhan_soqia, nkhal_naqlat: @alashiab_alsoqium.nkhal_naqlat, nkhal_soqia: @alashiab_alsoqium.nkhal_soqia, tota_soqia: @alashiab_alsoqium.tota_soqia, total_naqlat: @alashiab_alsoqium.total_naqlat } }
    assert_redirected_to alashiab_alsoqium_url(@alashiab_alsoqium)
  end

  test "should destroy alashiab_alsoqium" do
    assert_difference('AlashiabAlsoqium.count', -1) do
      delete alashiab_alsoqium_url(@alashiab_alsoqium)
    end

    assert_redirected_to alashiab_alsoqia_url
  end
end
