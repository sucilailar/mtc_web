require 'test_helper'

class KegiatansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kegiatan = kegiatans(:one)
  end

  test "should get index" do
    get kegiatans_url
    assert_response :success
  end

  test "should get new" do
    get new_kegiatan_url
    assert_response :success
  end

  test "should create kegiatan" do
    assert_difference('Kegiatan.count') do
      post kegiatans_url, params: { kegiatan: { biaya: @kegiatan.biaya, nama_kegiatan: @kegiatan.nama_kegiatan, tempat: @kegiatan.tempat, tgl: @kegiatan.tgl } }
    end

    assert_redirected_to kegiatan_url(Kegiatan.last)
  end

  test "should show kegiatan" do
    get kegiatan_url(@kegiatan)
    assert_response :success
  end

  test "should get edit" do
    get edit_kegiatan_url(@kegiatan)
    assert_response :success
  end

  test "should update kegiatan" do
    patch kegiatan_url(@kegiatan), params: { kegiatan: { biaya: @kegiatan.biaya, nama_kegiatan: @kegiatan.nama_kegiatan, tempat: @kegiatan.tempat, tgl: @kegiatan.tgl } }
    assert_redirected_to kegiatan_url(@kegiatan)
  end

  test "should destroy kegiatan" do
    assert_difference('Kegiatan.count', -1) do
      delete kegiatan_url(@kegiatan)
    end

    assert_redirected_to kegiatans_url
  end
end
