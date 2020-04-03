require 'test_helper'

class AljnabensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aljnaben = aljnabens(:one)
  end

  test "should get index" do
    get aljnabens_url
    assert_response :success
  end

  test "should get new" do
    get new_aljnaben_url
    assert_response :success
  end

  test "should create aljnaben" do
    assert_difference('Aljnaben.count') do
      post aljnabens_url, params: { aljnaben: { abdaan: @aljnaben.abdaan, alfrya: @aljnaben.alfrya, aljbail_aljnaben: @aljnaben.aljbail_aljnaben, almnahel: @aljnaben.almnahel, alqame: @aljnaben.alqame, alrahwah: @aljnaben.alrahwah, alrahwah_Well: @aljnaben.alrahwah_Well, date: @aljnaben.date, distribution: @aljnaben.distribution, distribution_total: @aljnaben.distribution_total, networks: @aljnaben.networks, networks_total: @aljnaben.networks_total, product: @aljnaben.product, product_total: @aljnaben.product_total, purification_station: @aljnaben.purification_station, quantity_sent_from_desalination: @aljnaben.quantity_sent_from_desalination, shra: @aljnaben.shra, user_id: @aljnaben.user_id } }
    end

    assert_redirected_to aljnaben_url(Aljnaben.last)
  end

  test "should show aljnaben" do
    get aljnaben_url(@aljnaben)
    assert_response :success
  end

  test "should get edit" do
    get edit_aljnaben_url(@aljnaben)
    assert_response :success
  end

  test "should update aljnaben" do
    patch aljnaben_url(@aljnaben), params: { aljnaben: { abdaan: @aljnaben.abdaan, alfrya: @aljnaben.alfrya, aljbail_aljnaben: @aljnaben.aljbail_aljnaben, almnahel: @aljnaben.almnahel, alqame: @aljnaben.alqame, alrahwah: @aljnaben.alrahwah, alrahwah_Well: @aljnaben.alrahwah_Well, date: @aljnaben.date, distribution: @aljnaben.distribution, distribution_total: @aljnaben.distribution_total, networks: @aljnaben.networks, networks_total: @aljnaben.networks_total, product: @aljnaben.product, product_total: @aljnaben.product_total, purification_station: @aljnaben.purification_station, quantity_sent_from_desalination: @aljnaben.quantity_sent_from_desalination, shra: @aljnaben.shra, user_id: @aljnaben.user_id } }
    assert_redirected_to aljnaben_url(@aljnaben)
  end

  test "should destroy aljnaben" do
    assert_difference('Aljnaben.count', -1) do
      delete aljnaben_url(@aljnaben)
    end

    assert_redirected_to aljnabens_url
  end
end
