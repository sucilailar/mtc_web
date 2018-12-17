require 'test_helper'

class KasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ka = kas(:one)
  end

  test "should get index" do
    get kas_url
    assert_response :success
  end

  test "should get new" do
    get new_ka_url
    assert_response :success
  end

  test "should create ka" do
    assert_difference('Ka.count') do
      post kas_url, params: { ka: { bendahara_id: @ka.bendahara_id, debit: @ka.debit, keterangan: @ka.keterangan, kredit: @ka.kredit, saldo: @ka.saldo } }
    end

    assert_redirected_to ka_url(Ka.last)
  end

  test "should show ka" do
    get ka_url(@ka)
    assert_response :success
  end

  test "should get edit" do
    get edit_ka_url(@ka)
    assert_response :success
  end

  test "should update ka" do
    patch ka_url(@ka), params: { ka: { bendahara_id: @ka.bendahara_id, debit: @ka.debit, keterangan: @ka.keterangan, kredit: @ka.kredit, saldo: @ka.saldo } }
    assert_redirected_to ka_url(@ka)
  end

  test "should destroy ka" do
    assert_difference('Ka.count', -1) do
      delete ka_url(@ka)
    end

    assert_redirected_to kas_url
  end
end
