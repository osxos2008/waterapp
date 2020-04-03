require 'test_helper'

class TohamhalshamelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tohamhalshamel = tohamhalshamels(:one)
  end

  test "should get index" do
    get tohamhalshamels_url
    assert_response :success
  end

  test "should get new" do
    get new_tohamhalshamel_url
    assert_response :success
  end

  test "should create tohamhalshamel" do
    assert_difference('Tohamhalshamel.count') do
      post tohamhalshamels_url, params: { tohamhalshamel: { alahsabiawell_almekhwah: @tohamhalshamel.alahsabiawell_almekhwah, algreen: @tohamhalshamel.algreen, alhjrah: @tohamhalshamel.alhjrah, almekhwah: @tohamhalshamel.almekhwah, almnahel: @tohamhalshamel.almnahel, almnahl_total: @tohamhalshamel.almnahl_total, almswdah: @tohamhalshamel.almswdah, alrmedah: @tohamhalshamel.alrmedah, alrmedahwell: @tohamhalshamel.alrmedahwell, bneatta: @tohamhalshamel.bneatta, date: @tohamhalshamel.date, distribution: @tohamhalshamel.distribution, distribution_total: @tohamhalshamel.distribution_total, doqahwell_qlwah: @tohamhalshamel.doqahwell_qlwah, doqatabdulhamed: @tohamhalshamel.doqatabdulhamed, doqatabdulhamedwell: @tohamhalshamel.doqatabdulhamedwell, elepwell_alhjrah: @tohamhalshamel.elepwell_alhjrah, ghamidalznad: @tohamhalshamel.ghamidalznad, mmna: @tohamhalshamel.mmna, nawan: @tohamhalshamel.nawan, nera: @tohamhalshamel.nera, networks: @tohamhalshamel.networks, networks_total: @tohamhalshamel.networks_total, nsbah: @tohamhalshamel.nsbah, product: @tohamhalshamel.product, product_total: @tohamhalshamel.product_total, qlwah: @tohamhalshamel.qlwah, shmalalmekhwah: @tohamhalshamel.shmalalmekhwah, user_id: @tohamhalshamel.user_id } }
    end

    assert_redirected_to tohamhalshamel_url(Tohamhalshamel.last)
  end

  test "should show tohamhalshamel" do
    get tohamhalshamel_url(@tohamhalshamel)
    assert_response :success
  end

  test "should get edit" do
    get edit_tohamhalshamel_url(@tohamhalshamel)
    assert_response :success
  end

  test "should update tohamhalshamel" do
    patch tohamhalshamel_url(@tohamhalshamel), params: { tohamhalshamel: { alahsabiawell_almekhwah: @tohamhalshamel.alahsabiawell_almekhwah, algreen: @tohamhalshamel.algreen, alhjrah: @tohamhalshamel.alhjrah, almekhwah: @tohamhalshamel.almekhwah, almnahel: @tohamhalshamel.almnahel, almnahl_total: @tohamhalshamel.almnahl_total, almswdah: @tohamhalshamel.almswdah, alrmedah: @tohamhalshamel.alrmedah, alrmedahwell: @tohamhalshamel.alrmedahwell, bneatta: @tohamhalshamel.bneatta, date: @tohamhalshamel.date, distribution: @tohamhalshamel.distribution, distribution_total: @tohamhalshamel.distribution_total, doqahwell_qlwah: @tohamhalshamel.doqahwell_qlwah, doqatabdulhamed: @tohamhalshamel.doqatabdulhamed, doqatabdulhamedwell: @tohamhalshamel.doqatabdulhamedwell, elepwell_alhjrah: @tohamhalshamel.elepwell_alhjrah, ghamidalznad: @tohamhalshamel.ghamidalznad, mmna: @tohamhalshamel.mmna, nawan: @tohamhalshamel.nawan, nera: @tohamhalshamel.nera, networks: @tohamhalshamel.networks, networks_total: @tohamhalshamel.networks_total, nsbah: @tohamhalshamel.nsbah, product: @tohamhalshamel.product, product_total: @tohamhalshamel.product_total, qlwah: @tohamhalshamel.qlwah, shmalalmekhwah: @tohamhalshamel.shmalalmekhwah, user_id: @tohamhalshamel.user_id } }
    assert_redirected_to tohamhalshamel_url(@tohamhalshamel)
  end

  test "should destroy tohamhalshamel" do
    assert_difference('Tohamhalshamel.count', -1) do
      delete tohamhalshamel_url(@tohamhalshamel)
    end

    assert_redirected_to tohamhalshamels_url
  end
end
