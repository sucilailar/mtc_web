require 'test_helper'

class DataKejuaraansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_kejuaraan = data_kejuaraans(:one)
  end

  test "should get index" do
    get data_kejuaraans_url
    assert_response :success
  end

  test "should get new" do
    get new_data_kejuaraan_url
    assert_response :success
  end

  test "should create data_kejuaraan" do
    assert_difference('DataKejuaraan.count') do
      post data_kejuaraans_url, params: { data_kejuaraan: { akun_id: @data_kejuaraan.akun_id, jenis_kejuaraan: @data_kejuaraan.jenis_kejuaraan, kategori_under: @data_kejuaraan.kategori_under, kegiatan_id: @data_kejuaraan.kegiatan_id, perolehan: @data_kejuaraan.perolehan, prestasi_pemula: @data_kejuaraan.prestasi_pemula, tingkat: @data_kejuaraan.tingkat } }
    end

    assert_redirected_to data_kejuaraan_url(DataKejuaraan.last)
  end

  test "should show data_kejuaraan" do
    get data_kejuaraan_url(@data_kejuaraan)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_kejuaraan_url(@data_kejuaraan)
    assert_response :success
  end

  test "should update data_kejuaraan" do
    patch data_kejuaraan_url(@data_kejuaraan), params: { data_kejuaraan: { akun_id: @data_kejuaraan.akun_id, jenis_kejuaraan: @data_kejuaraan.jenis_kejuaraan, kategori_under: @data_kejuaraan.kategori_under, kegiatan_id: @data_kejuaraan.kegiatan_id, perolehan: @data_kejuaraan.perolehan, prestasi_pemula: @data_kejuaraan.prestasi_pemula, tingkat: @data_kejuaraan.tingkat } }
    assert_redirected_to data_kejuaraan_url(@data_kejuaraan)
  end

  test "should destroy data_kejuaraan" do
    assert_difference('DataKejuaraan.count', -1) do
      delete data_kejuaraan_url(@data_kejuaraan)
    end

    assert_redirected_to data_kejuaraans_url
  end
end
