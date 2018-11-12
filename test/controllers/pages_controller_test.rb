require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get discography" do
    get pages_discography_url
    assert_response :success
  end

  test "should get tour" do
    get pages_tour_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get band" do
    get pages_band_url
    assert_response :success
  end

end
