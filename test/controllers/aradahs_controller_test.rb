require 'test_helper'

class AradahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aradah = aradahs(:one)
  end

  test "should get index" do
    get aradahs_url
    assert_response :success
  end

  test "should get new" do
    get new_aradah_url
    assert_response :success
  end

  test "should create aradah" do
    assert_difference('Aradah.count') do
      post aradahs_url, params: { aradah: { almnahel: @aradah.almnahel, bnenet_blkhzmr: @aradah.bnenet_blkhzmr, bnenet_bnehasan: @aradah.bnenet_bnehasan, bnenet_total: @aradah.bnenet_total, bneshep_blkhzmr: @aradah.bneshep_blkhzmr, bneshep_bnehasan: @aradah.bneshep_bnehasan, bneshep_total: @aradah.bneshep_total, bnet_almosa: @aradah.bnet_almosa, bnet_qrnthbe: @aradah.bnet_qrnthbe, bnet_total: @aradah.bnet_total, bshep_almosa: @aradah.bshep_almosa, date: @aradah.date, distribution: @aradah.distribution, distripution_total: @aradah.distripution_total, from_thrawen_tank: @aradah.from_thrawen_tank, mnahel_total: @aradah.mnahel_total, mnet_alhalah: @aradah.mnet_alhalah, mnet_aljawfaa: @aradah.mnet_aljawfaa, mnet_alkahla1: @aradah.mnet_alkahla1, mnet_alkahla2: @aradah.mnet_alkahla2, mnet_alkhlb: @aradah.mnet_alkhlb, mnet_blhkm: @aradah.mnet_blhkm, mnet_dos: @aradah.mnet_dos, mnet_sehan: @aradah.mnet_sehan, mnet_total: @aradah.mnet_total, mrawah: @aradah.mrawah, mshep_alhalah: @aradah.mshep_alhalah, mshep_dos: @aradah.mshep_dos, mshep_total: @aradah.mshep_total, network_total: @aradah.network_total, networks: @aradah.networks, product: @aradah.product, product_total: @aradah.product_total, qnet_alqsmh: @aradah.qnet_alqsmh, qnet_althrawen: @aradah.qnet_althrawen, qnet_althrawen_alatawlah: @aradah.qnet_althrawen_alatawlah, qnet_bedah: @aradah.qnet_bedah, qnet_bneedwan1: @aradah.qnet_bneedwan1, qnet_bneedwan2: @aradah.qnet_bneedwan2, qnet_mashoqah: @aradah.qnet_mashoqah, qnet_total: @aradah.qnet_total, qshep_alqsmh: @aradah.qshep_alqsmh, qshep_althrawen: @aradah.qshep_althrawen, qshep_bneodwan: @aradah.qshep_bneodwan, qshep_mashoqah: @aradah.qshep_mashoqah, qshep_nkhal: @aradah.qshep_nkhal, qshep_total: @aradah.qshep_total, user_id: @aradah.user_id, wells: @aradah.wells } }
    end

    assert_redirected_to aradah_url(Aradah.last)
  end

  test "should show aradah" do
    get aradah_url(@aradah)
    assert_response :success
  end

  test "should get edit" do
    get edit_aradah_url(@aradah)
    assert_response :success
  end

  test "should update aradah" do
    patch aradah_url(@aradah), params: { aradah: { almnahel: @aradah.almnahel, bnenet_blkhzmr: @aradah.bnenet_blkhzmr, bnenet_bnehasan: @aradah.bnenet_bnehasan, bnenet_total: @aradah.bnenet_total, bneshep_blkhzmr: @aradah.bneshep_blkhzmr, bneshep_bnehasan: @aradah.bneshep_bnehasan, bneshep_total: @aradah.bneshep_total, bnet_almosa: @aradah.bnet_almosa, bnet_qrnthbe: @aradah.bnet_qrnthbe, bnet_total: @aradah.bnet_total, bshep_almosa: @aradah.bshep_almosa, date: @aradah.date, distribution: @aradah.distribution, distripution_total: @aradah.distripution_total, from_thrawen_tank: @aradah.from_thrawen_tank, mnahel_total: @aradah.mnahel_total, mnet_alhalah: @aradah.mnet_alhalah, mnet_aljawfaa: @aradah.mnet_aljawfaa, mnet_alkahla1: @aradah.mnet_alkahla1, mnet_alkahla2: @aradah.mnet_alkahla2, mnet_alkhlb: @aradah.mnet_alkhlb, mnet_blhkm: @aradah.mnet_blhkm, mnet_dos: @aradah.mnet_dos, mnet_sehan: @aradah.mnet_sehan, mnet_total: @aradah.mnet_total, mrawah: @aradah.mrawah, mshep_alhalah: @aradah.mshep_alhalah, mshep_dos: @aradah.mshep_dos, mshep_total: @aradah.mshep_total, network_total: @aradah.network_total, networks: @aradah.networks, product: @aradah.product, product_total: @aradah.product_total, qnet_alqsmh: @aradah.qnet_alqsmh, qnet_althrawen: @aradah.qnet_althrawen, qnet_althrawen_alatawlah: @aradah.qnet_althrawen_alatawlah, qnet_bedah: @aradah.qnet_bedah, qnet_bneedwan1: @aradah.qnet_bneedwan1, qnet_bneedwan2: @aradah.qnet_bneedwan2, qnet_mashoqah: @aradah.qnet_mashoqah, qnet_total: @aradah.qnet_total, qshep_alqsmh: @aradah.qshep_alqsmh, qshep_althrawen: @aradah.qshep_althrawen, qshep_bneodwan: @aradah.qshep_bneodwan, qshep_mashoqah: @aradah.qshep_mashoqah, qshep_nkhal: @aradah.qshep_nkhal, qshep_total: @aradah.qshep_total, user_id: @aradah.user_id, wells: @aradah.wells } }
    assert_redirected_to aradah_url(@aradah)
  end

  test "should destroy aradah" do
    assert_difference('Aradah.count', -1) do
      delete aradah_url(@aradah)
    end

    assert_redirected_to aradahs_url
  end
end
