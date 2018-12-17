require 'test_helper'

class KategoriPembayaransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kategori_pembayaran = kategori_pembayarans(:one)
  end

  test "should get index" do
    get kategori_pembayarans_url
    assert_response :success
  end

  test "should get new" do
    get new_kategori_pembayaran_url
    assert_response :success
  end

  test "should create kategori_pembayaran" do
    assert_difference('KategoriPembayaran.count') do
      post kategori_pembayarans_url, params: { kategori_pembayaran: { katagori_pembayaran: @kategori_pembayaran.katagori_pembayaran, nominal: @kategori_pembayaran.nominal } }
    end

    assert_redirected_to kategori_pembayaran_url(KategoriPembayaran.last)
  end

  test "should show kategori_pembayaran" do
    get kategori_pembayaran_url(@kategori_pembayaran)
    assert_response :success
  end

  test "should get edit" do
    get edit_kategori_pembayaran_url(@kategori_pembayaran)
    assert_response :success
  end

  test "should update kategori_pembayaran" do
    patch kategori_pembayaran_url(@kategori_pembayaran), params: { kategori_pembayaran: { katagori_pembayaran: @kategori_pembayaran.katagori_pembayaran, nominal: @kategori_pembayaran.nominal } }
    assert_redirected_to kategori_pembayaran_url(@kategori_pembayaran)
  end

  test "should destroy kategori_pembayaran" do
    assert_difference('KategoriPembayaran.count', -1) do
      delete kategori_pembayaran_url(@kategori_pembayaran)
    end

    assert_redirected_to kategori_pembayarans_url
  end
end
