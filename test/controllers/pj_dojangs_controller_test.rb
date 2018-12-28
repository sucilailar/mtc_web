require 'test_helper'

class PjDojangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pj_dojang = pj_dojangs(:one)
  end

  test "should get index" do
    get pj_dojangs_url
    assert_response :success
  end

  test "should get new" do
    get new_pj_dojang_url
    assert_response :success
  end

  test "should create pj_dojang" do
    assert_difference('PjDojang.count') do
      post pj_dojangs_url, params: { pj_dojang: { akun_id: @pj_dojang.akun_id, dojang_id: @pj_dojang.dojang_id } }
    end

    assert_redirected_to pj_dojang_url(PjDojang.last)
  end

  test "should show pj_dojang" do
    get pj_dojang_url(@pj_dojang)
    assert_response :success
  end

  test "should get edit" do
    get edit_pj_dojang_url(@pj_dojang)
    assert_response :success
  end

  test "should update pj_dojang" do
    patch pj_dojang_url(@pj_dojang), params: { pj_dojang: { akun_id: @pj_dojang.akun_id, dojang_id: @pj_dojang.dojang_id } }
    assert_redirected_to pj_dojang_url(@pj_dojang)
  end

  test "should destroy pj_dojang" do
    assert_difference('PjDojang.count', -1) do
      delete pj_dojang_url(@pj_dojang)
    end

    assert_redirected_to pj_dojangs_url
  end
end
