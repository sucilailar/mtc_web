require 'test_helper'

class DojangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dojang = dojangs(:one)
  end

  test "should get index" do
    get dojangs_url
    assert_response :success
  end

  test "should get new" do
    get new_dojang_url
    assert_response :success
  end

  test "should create dojang" do
    assert_difference('Dojang.count') do
      post dojangs_url, params: { dojang: { alamat: @dojang.alamat, nama_dojang: @dojang.nama_dojang, penanggung_jawab: @dojang.penanggung_jawab } }
    end

    assert_redirected_to dojang_url(Dojang.last)
  end

  test "should show dojang" do
    get dojang_url(@dojang)
    assert_response :success
  end

  test "should get edit" do
    get edit_dojang_url(@dojang)
    assert_response :success
  end

  test "should update dojang" do
    patch dojang_url(@dojang), params: { dojang: { alamat: @dojang.alamat, nama_dojang: @dojang.nama_dojang, penanggung_jawab: @dojang.penanggung_jawab } }
    assert_redirected_to dojang_url(@dojang)
  end

  test "should destroy dojang" do
    assert_difference('Dojang.count', -1) do
      delete dojang_url(@dojang)
    end

    assert_redirected_to dojangs_url
  end
end
