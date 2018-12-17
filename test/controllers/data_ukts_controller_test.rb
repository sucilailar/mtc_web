require 'test_helper'

class DataUktsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_ukt = data_ukts(:one)
  end

  test "should get index" do
    get data_ukts_url
    assert_response :success
  end

  test "should get new" do
    get new_data_ukt_url
    assert_response :success
  end

  test "should create data_ukt" do
    assert_difference('DataUkt.count') do
      post data_ukts_url, params: { data_ukt: { jumlah: @data_ukt.jumlah, periode: @data_ukt.periode } }
    end

    assert_redirected_to data_ukt_url(DataUkt.last)
  end

  test "should show data_ukt" do
    get data_ukt_url(@data_ukt)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_ukt_url(@data_ukt)
    assert_response :success
  end

  test "should update data_ukt" do
    patch data_ukt_url(@data_ukt), params: { data_ukt: { jumlah: @data_ukt.jumlah, periode: @data_ukt.periode } }
    assert_redirected_to data_ukt_url(@data_ukt)
  end

  test "should destroy data_ukt" do
    assert_difference('DataUkt.count', -1) do
      delete data_ukt_url(@data_ukt)
    end

    assert_redirected_to data_ukts_url
  end
end
