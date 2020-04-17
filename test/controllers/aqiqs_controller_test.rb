require 'test_helper'

class AqiqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aqiq = aqiqs(:one)
  end

  test "should get index" do
    get aqiqs_url
    assert_response :success
  end

  test "should get new" do
    get new_aqiq_url
    assert_response :success
  end

  test "should create aqiq" do
    assert_difference('Aqiq.count') do
      post aqiqs_url, params: { aqiq: { alamer_faisal_Tank: @aqiq.alamer_faisal_Tank, alaunog: @aqiq.alaunog, albaha_shahba1: @aqiq.albaha_shahba1, albaha_shahba2: @aqiq.albaha_shahba2, algabar_alawla: @aqiq.algabar_alawla, algabar_alsufla: @aqiq.algabar_alsufla, alhbees: @aqiq.alhbees, allehyan_mnahel: @aqiq.allehyan_mnahel, almnahel: @aqiq.almnahel, almnahel_total: @aqiq.almnahel_total, almshereef: @aqiq.almshereef, almusa: @aqiq.almusa, almzree: @aqiq.almzree, almzree_mnahel: @aqiq.almzree_mnahel, alsenaeeh_mnahel: @aqiq.alsenaeeh_mnahel, aqiq_produce: @aqiq.aqiq_produce, aqiq_total_distribution: @aqiq.aqiq_total_distribution, baljurashy: @aqiq.baljurashy, baljurashy_mnahel: @aqiq.baljurashy_mnahel, baljurashy_total_distribution: @aqiq.baljurashy_total_distribution, bany_dhabyan: @aqiq.bany_dhabyan, bany_heda: @aqiq.bany_heda, bany_kabeer_mnahel: @aqiq.bany_kabeer_mnahel, bany_kaber: @aqiq.bany_kaber, bany_saeed: @aqiq.bany_saeed, blue: @aqiq.blue, date: @aqiq.date, distribution: @aqiq.distribution, from_althlya_to_abdan: @aqiq.from_althlya_to_abdan, from_althlya_to_almzree: @aqiq.from_althlya_to_almzree, from_althlya_to_aradah: @aqiq.from_althlya_to_aradah, from_althlya_to_baljurashy: @aqiq.from_althlya_to_baljurashy, from_althlya_to_shahba: @aqiq.from_althlya_to_shahba, jarab: @aqiq.jarab, product: @aqiq.product, thrad_produce: @aqiq.thrad_produce, total_albaha_distribution: @aqiq.total_albaha_distribution, total_distribution: @aqiq.total_distribution, total_produce: @aqiq.total_produce, user_id: @aqiq.user_id } }
    end

    assert_redirected_to aqiq_url(Aqiq.last)
  end

  test "should show aqiq" do
    get aqiq_url(@aqiq)
    assert_response :success
  end

  test "should get edit" do
    get edit_aqiq_url(@aqiq)
    assert_response :success
  end

  test "should update aqiq" do
    patch aqiq_url(@aqiq), params: { aqiq: { alamer_faisal_Tank: @aqiq.alamer_faisal_Tank, alaunog: @aqiq.alaunog, albaha_shahba1: @aqiq.albaha_shahba1, albaha_shahba2: @aqiq.albaha_shahba2, algabar_alawla: @aqiq.algabar_alawla, algabar_alsufla: @aqiq.algabar_alsufla, alhbees: @aqiq.alhbees, allehyan_mnahel: @aqiq.allehyan_mnahel, almnahel: @aqiq.almnahel, almnahel_total: @aqiq.almnahel_total, almshereef: @aqiq.almshereef, almusa: @aqiq.almusa, almzree: @aqiq.almzree, almzree_mnahel: @aqiq.almzree_mnahel, alsenaeeh_mnahel: @aqiq.alsenaeeh_mnahel, aqiq_produce: @aqiq.aqiq_produce, aqiq_total_distribution: @aqiq.aqiq_total_distribution, baljurashy: @aqiq.baljurashy, baljurashy_mnahel: @aqiq.baljurashy_mnahel, baljurashy_total_distribution: @aqiq.baljurashy_total_distribution, bany_dhabyan: @aqiq.bany_dhabyan, bany_heda: @aqiq.bany_heda, bany_kabeer_mnahel: @aqiq.bany_kabeer_mnahel, bany_kaber: @aqiq.bany_kaber, bany_saeed: @aqiq.bany_saeed, blue: @aqiq.blue, date: @aqiq.date, distribution: @aqiq.distribution, from_althlya_to_abdan: @aqiq.from_althlya_to_abdan, from_althlya_to_almzree: @aqiq.from_althlya_to_almzree, from_althlya_to_aradah: @aqiq.from_althlya_to_aradah, from_althlya_to_baljurashy: @aqiq.from_althlya_to_baljurashy, from_althlya_to_shahba: @aqiq.from_althlya_to_shahba, jarab: @aqiq.jarab, product: @aqiq.product, thrad_produce: @aqiq.thrad_produce, total_albaha_distribution: @aqiq.total_albaha_distribution, total_distribution: @aqiq.total_distribution, total_produce: @aqiq.total_produce, user_id: @aqiq.user_id } }
    assert_redirected_to aqiq_url(@aqiq)
  end

  test "should destroy aqiq" do
    assert_difference('Aqiq.count', -1) do
      delete aqiq_url(@aqiq)
    end

    assert_redirected_to aqiqs_url
  end
end
