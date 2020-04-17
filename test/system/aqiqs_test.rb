require "application_system_test_case"

class AqiqsTest < ApplicationSystemTestCase
  setup do
    @aqiq = aqiqs(:one)
  end

  test "visiting the index" do
    visit aqiqs_url
    assert_selector "h1", text: "Aqiqs"
  end

  test "creating a Aqiq" do
    visit aqiqs_url
    click_on "New Aqiq"

    fill_in "Alamer faisal tank", with: @aqiq.alamer_faisal_Tank
    fill_in "Alaunog", with: @aqiq.alaunog
    fill_in "Albaha shahba1", with: @aqiq.albaha_shahba1
    fill_in "Albaha shahba2", with: @aqiq.albaha_shahba2
    fill_in "Algabar alawla", with: @aqiq.algabar_alawla
    fill_in "Algabar alsufla", with: @aqiq.algabar_alsufla
    fill_in "Alhbees", with: @aqiq.alhbees
    fill_in "Allehyan mnahel", with: @aqiq.allehyan_mnahel
    fill_in "Almnahel", with: @aqiq.almnahel
    fill_in "Almnahel total", with: @aqiq.almnahel_total
    fill_in "Almshereef", with: @aqiq.almshereef
    fill_in "Almusa", with: @aqiq.almusa
    fill_in "Almzree", with: @aqiq.almzree
    fill_in "Almzree mnahel", with: @aqiq.almzree_mnahel
    fill_in "Alsenaeeh mnahel", with: @aqiq.alsenaeeh_mnahel
    fill_in "Aqiq produce", with: @aqiq.aqiq_produce
    fill_in "Aqiq total distribution", with: @aqiq.aqiq_total_distribution
    fill_in "Baljurashy", with: @aqiq.baljurashy
    fill_in "Baljurashy mnahel", with: @aqiq.baljurashy_mnahel
    fill_in "Baljurashy total distribution", with: @aqiq.baljurashy_total_distribution
    fill_in "Bany dhabyan", with: @aqiq.bany_dhabyan
    fill_in "Bany heda", with: @aqiq.bany_heda
    fill_in "Bany kabeer mnahel", with: @aqiq.bany_kabeer_mnahel
    fill_in "Bany kaber", with: @aqiq.bany_kaber
    fill_in "Bany saeed", with: @aqiq.bany_saeed
    fill_in "Blue", with: @aqiq.blue
    fill_in "Date", with: @aqiq.date
    fill_in "Distribution", with: @aqiq.distribution
    fill_in "From althlya to abdan", with: @aqiq.from_althlya_to_abdan
    fill_in "From althlya to almzree", with: @aqiq.from_althlya_to_almzree
    fill_in "From althlya to aradah", with: @aqiq.from_althlya_to_aradah
    fill_in "From althlya to baljurashy", with: @aqiq.from_althlya_to_baljurashy
    fill_in "From althlya to shahba", with: @aqiq.from_althlya_to_shahba
    fill_in "Jarab", with: @aqiq.jarab
    fill_in "Product", with: @aqiq.product
    fill_in "Thrad produce", with: @aqiq.thrad_produce
    fill_in "Total albaha distribution", with: @aqiq.total_albaha_distribution
    fill_in "Total distribution", with: @aqiq.total_distribution
    fill_in "Total produce", with: @aqiq.total_produce
    fill_in "User", with: @aqiq.user_id
    click_on "Create Aqiq"

    assert_text "Aqiq was successfully created"
    click_on "Back"
  end

  test "updating a Aqiq" do
    visit aqiqs_url
    click_on "Edit", match: :first

    fill_in "Alamer faisal tank", with: @aqiq.alamer_faisal_Tank
    fill_in "Alaunog", with: @aqiq.alaunog
    fill_in "Albaha shahba1", with: @aqiq.albaha_shahba1
    fill_in "Albaha shahba2", with: @aqiq.albaha_shahba2
    fill_in "Algabar alawla", with: @aqiq.algabar_alawla
    fill_in "Algabar alsufla", with: @aqiq.algabar_alsufla
    fill_in "Alhbees", with: @aqiq.alhbees
    fill_in "Allehyan mnahel", with: @aqiq.allehyan_mnahel
    fill_in "Almnahel", with: @aqiq.almnahel
    fill_in "Almnahel total", with: @aqiq.almnahel_total
    fill_in "Almshereef", with: @aqiq.almshereef
    fill_in "Almusa", with: @aqiq.almusa
    fill_in "Almzree", with: @aqiq.almzree
    fill_in "Almzree mnahel", with: @aqiq.almzree_mnahel
    fill_in "Alsenaeeh mnahel", with: @aqiq.alsenaeeh_mnahel
    fill_in "Aqiq produce", with: @aqiq.aqiq_produce
    fill_in "Aqiq total distribution", with: @aqiq.aqiq_total_distribution
    fill_in "Baljurashy", with: @aqiq.baljurashy
    fill_in "Baljurashy mnahel", with: @aqiq.baljurashy_mnahel
    fill_in "Baljurashy total distribution", with: @aqiq.baljurashy_total_distribution
    fill_in "Bany dhabyan", with: @aqiq.bany_dhabyan
    fill_in "Bany heda", with: @aqiq.bany_heda
    fill_in "Bany kabeer mnahel", with: @aqiq.bany_kabeer_mnahel
    fill_in "Bany kaber", with: @aqiq.bany_kaber
    fill_in "Bany saeed", with: @aqiq.bany_saeed
    fill_in "Blue", with: @aqiq.blue
    fill_in "Date", with: @aqiq.date
    fill_in "Distribution", with: @aqiq.distribution
    fill_in "From althlya to abdan", with: @aqiq.from_althlya_to_abdan
    fill_in "From althlya to almzree", with: @aqiq.from_althlya_to_almzree
    fill_in "From althlya to aradah", with: @aqiq.from_althlya_to_aradah
    fill_in "From althlya to baljurashy", with: @aqiq.from_althlya_to_baljurashy
    fill_in "From althlya to shahba", with: @aqiq.from_althlya_to_shahba
    fill_in "Jarab", with: @aqiq.jarab
    fill_in "Product", with: @aqiq.product
    fill_in "Thrad produce", with: @aqiq.thrad_produce
    fill_in "Total albaha distribution", with: @aqiq.total_albaha_distribution
    fill_in "Total distribution", with: @aqiq.total_distribution
    fill_in "Total produce", with: @aqiq.total_produce
    fill_in "User", with: @aqiq.user_id
    click_on "Update Aqiq"

    assert_text "Aqiq was successfully updated"
    click_on "Back"
  end

  test "destroying a Aqiq" do
    visit aqiqs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aqiq was successfully destroyed"
  end
end
