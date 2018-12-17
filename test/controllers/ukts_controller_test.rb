require 'test_helper'

class UktsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ukt = ukts(:one)
  end

  test "should get index" do
    get ukts_url
    assert_response :success
  end

  test "should get new" do
    get new_ukt_url
    assert_response :success
  end

  test "should create ukt" do
    assert_difference('Ukt.count') do
      post ukts_url, params: { ukt: { foto: @ukt.foto, geup: @ukt.geup, nama: @ukt.nama, no_reg: @ukt.no_reg, sabuk: @ukt.sabuk, tempat: @ukt.tempat, tgl_lahir: @ukt.tgl_lahir } }
    end

    assert_redirected_to ukt_url(Ukt.last)
  end

  test "should show ukt" do
    get ukt_url(@ukt)
    assert_response :success
  end

  test "should get edit" do
    get edit_ukt_url(@ukt)
    assert_response :success
  end

  test "should update ukt" do
    patch ukt_url(@ukt), params: { ukt: { foto: @ukt.foto, geup: @ukt.geup, nama: @ukt.nama, no_reg: @ukt.no_reg, sabuk: @ukt.sabuk, tempat: @ukt.tempat, tgl_lahir: @ukt.tgl_lahir } }
    assert_redirected_to ukt_url(@ukt)
  end

  test "should destroy ukt" do
    assert_difference('Ukt.count', -1) do
      delete ukt_url(@ukt)
    end

    assert_redirected_to ukts_url
  end
end
