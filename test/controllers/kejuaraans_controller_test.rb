require 'test_helper'

class KejuaraansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kejuaraan = kejuaraans(:one)
  end

  test "should get index" do
    get kejuaraans_url
    assert_response :success
  end

  test "should get new" do
    get new_kejuaraan_url
    assert_response :success
  end

  test "should create kejuaraan" do
    assert_difference('Kejuaraan.count') do
      post kejuaraans_url, params: { kejuaraan: { event_id: @kejuaraan.event_id, jenis_kejuaraan: @kejuaraan.jenis_kejuaraan, kategori_under: @kejuaraan.kategori_under, perolehan: @kejuaraan.perolehan, peserta_id: @kejuaraan.peserta_id, prestasi_pemula: @kejuaraan.prestasi_pemula, tingkat: @kejuaraan.tingkat } }
    end

    assert_redirected_to kejuaraan_url(Kejuaraan.last)
  end

  test "should show kejuaraan" do
    get kejuaraan_url(@kejuaraan)
    assert_response :success
  end

  test "should get edit" do
    get edit_kejuaraan_url(@kejuaraan)
    assert_response :success
  end

  test "should update kejuaraan" do
    patch kejuaraan_url(@kejuaraan), params: { kejuaraan: { event_id: @kejuaraan.event_id, jenis_kejuaraan: @kejuaraan.jenis_kejuaraan, kategori_under: @kejuaraan.kategori_under, perolehan: @kejuaraan.perolehan, peserta_id: @kejuaraan.peserta_id, prestasi_pemula: @kejuaraan.prestasi_pemula, tingkat: @kejuaraan.tingkat } }
    assert_redirected_to kejuaraan_url(@kejuaraan)
  end

  test "should destroy kejuaraan" do
    assert_difference('Kejuaraan.count', -1) do
      delete kejuaraan_url(@kejuaraan)
    end

    assert_redirected_to kejuaraans_url
  end
end
