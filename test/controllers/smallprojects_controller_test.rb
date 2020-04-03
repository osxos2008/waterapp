require 'test_helper'

class SmallprojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smallproject = smallprojects(:one)
  end

  test "should get index" do
    get smallprojects_url
    assert_response :success
  end

  test "should get new" do
    get new_smallproject_url
    assert_response :success
  end

  test "should create smallproject" do
    assert_difference('Smallproject.count') do
      post smallprojects_url, params: { smallproject: { alaqeq: @smallproject.alaqeq, albaha: @smallproject.albaha, alhgrah: @smallproject.alhgrah, almandaq: @smallproject.almandaq, almekhwah: @smallproject.almekhwah, alqora: @smallproject.alqora, bljorashy: @smallproject.bljorashy, date: @smallproject.date, detailed_production: @smallproject.detailed_production, product_btat: @smallproject.product_btat, product_thrad: @smallproject.product_thrad, product_total: @smallproject.product_total, qolwah: @smallproject.qolwah, smallproject: @smallproject.smallproject, total_wo_thrad_btat: @smallproject.total_wo_thrad_btat, user_id: @smallproject.user_id } }
    end

    assert_redirected_to smallproject_url(Smallproject.last)
  end

  test "should show smallproject" do
    get smallproject_url(@smallproject)
    assert_response :success
  end

  test "should get edit" do
    get edit_smallproject_url(@smallproject)
    assert_response :success
  end

  test "should update smallproject" do
    patch smallproject_url(@smallproject), params: { smallproject: { alaqeq: @smallproject.alaqeq, albaha: @smallproject.albaha, alhgrah: @smallproject.alhgrah, almandaq: @smallproject.almandaq, almekhwah: @smallproject.almekhwah, alqora: @smallproject.alqora, bljorashy: @smallproject.bljorashy, date: @smallproject.date, detailed_production: @smallproject.detailed_production, product_btat: @smallproject.product_btat, product_thrad: @smallproject.product_thrad, product_total: @smallproject.product_total, qolwah: @smallproject.qolwah, smallproject: @smallproject.smallproject, total_wo_thrad_btat: @smallproject.total_wo_thrad_btat, user_id: @smallproject.user_id } }
    assert_redirected_to smallproject_url(@smallproject)
  end

  test "should destroy smallproject" do
    assert_difference('Smallproject.count', -1) do
      delete smallproject_url(@smallproject)
    end

    assert_redirected_to smallprojects_url
  end
end
