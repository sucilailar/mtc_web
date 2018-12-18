require 'test_helper'

class PengurusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @penguru = pengurus(:one)
  end

  test "should get index" do
    get pengurus_url
    assert_response :success
  end

  test "should get new" do
    get new_penguru_url
    assert_response :success
  end

  test "should create penguru" do
    assert_difference('Penguru.count') do
      post pengurus_url, params: { penguru: { akun_id: @penguru.akun_id, periode_akhir: @penguru.periode_akhir, periode_awal: @penguru.periode_awal, role_id: @penguru.role_id } }
    end

    assert_redirected_to penguru_url(Penguru.last)
  end

  test "should show penguru" do
    get penguru_url(@penguru)
    assert_response :success
  end

  test "should get edit" do
    get edit_penguru_url(@penguru)
    assert_response :success
  end

  test "should update penguru" do
    patch penguru_url(@penguru), params: { penguru: { akun_id: @penguru.akun_id, periode_akhir: @penguru.periode_akhir, periode_awal: @penguru.periode_awal, role_id: @penguru.role_id } }
    assert_redirected_to penguru_url(@penguru)
  end

  test "should destroy penguru" do
    assert_difference('Penguru.count', -1) do
      delete penguru_url(@penguru)
    end

    assert_redirected_to pengurus_url
  end
end
