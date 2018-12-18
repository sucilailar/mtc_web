require 'test_helper'

class GeupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geup = geups(:one)
  end

  test "should get index" do
    get geups_url
    assert_response :success
  end

  test "should get new" do
    get new_geup_url
    assert_response :success
  end

  test "should create geup" do
    assert_difference('Geup.count') do
      post geups_url, params: { geup: { geup: @geup.geup, warna_string: @geup.warna_string } }
    end

    assert_redirected_to geup_url(Geup.last)
  end

  test "should show geup" do
    get geup_url(@geup)
    assert_response :success
  end

  test "should get edit" do
    get edit_geup_url(@geup)
    assert_response :success
  end

  test "should update geup" do
    patch geup_url(@geup), params: { geup: { geup: @geup.geup, warna_string: @geup.warna_string } }
    assert_redirected_to geup_url(@geup)
  end

  test "should destroy geup" do
    assert_difference('Geup.count', -1) do
      delete geup_url(@geup)
    end

    assert_redirected_to geups_url
  end
end
