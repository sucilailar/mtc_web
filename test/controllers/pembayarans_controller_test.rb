require 'test_helper'

class PembayaransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pembayaran = pembayarans(:one)
  end

  test "should get index" do
    get pembayarans_url
    assert_response :success
  end

  test "should get new" do
    get new_pembayaran_url
    assert_response :success
  end

  test "should create pembayaran" do
    assert_difference('Pembayaran.count') do
      post pembayarans_url, params: { pembayaran: { akun_id: @pembayaran.akun_id, cicilan: @pembayaran.cicilan, id_bendahara: @pembayaran.id_bendahara, kategori_kegiatan_id: @pembayaran.kategori_kegiatan_id, keterangan: @pembayaran.keterangan, nominal: @pembayaran.nominal } }
    end

    assert_redirected_to pembayaran_url(Pembayaran.last)
  end

  test "should show pembayaran" do
    get pembayaran_url(@pembayaran)
    assert_response :success
  end

  test "should get edit" do
    get edit_pembayaran_url(@pembayaran)
    assert_response :success
  end

  test "should update pembayaran" do
    patch pembayaran_url(@pembayaran), params: { pembayaran: { akun_id: @pembayaran.akun_id, cicilan: @pembayaran.cicilan, id_bendahara: @pembayaran.id_bendahara, kategori_kegiatan_id: @pembayaran.kategori_kegiatan_id, keterangan: @pembayaran.keterangan, nominal: @pembayaran.nominal } }
    assert_redirected_to pembayaran_url(@pembayaran)
  end

  test "should destroy pembayaran" do
    assert_difference('Pembayaran.count', -1) do
      delete pembayaran_url(@pembayaran)
    end

    assert_redirected_to pembayarans_url
  end
end
