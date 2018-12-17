require 'test_helper'

class AkunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @akun = akuns(:one)
  end

  test "should get index" do
    get akuns_url
    assert_response :success
  end

  test "should get new" do
    get new_akun_url
    assert_response :success
  end

  test "should create akun" do
    assert_difference('Akun.count') do
      post akuns_url, params: { akun: { alamat: @akun.alamat, angkatan: @akun.angkatan, dojang: @akun.dojang, geup: @akun.geup, nama: @akun.nama, no_reg: @akun.no_reg, pekerjaan: @akun.pekerjaan, role_id: @akun.role_id, tahun_masuk: @akun.tahun_masuk, tempat_lahir: @akun.tempat_lahir, tgl_lahir: @akun.tgl_lahir } }
    end

    assert_redirected_to akun_url(Akun.last)
  end

  test "should show akun" do
    get akun_url(@akun)
    assert_response :success
  end

  test "should get edit" do
    get edit_akun_url(@akun)
    assert_response :success
  end

  test "should update akun" do
    patch akun_url(@akun), params: { akun: { alamat: @akun.alamat, angkatan: @akun.angkatan, dojang: @akun.dojang, geup: @akun.geup, nama: @akun.nama, no_reg: @akun.no_reg, pekerjaan: @akun.pekerjaan, role_id: @akun.role_id, tahun_masuk: @akun.tahun_masuk, tempat_lahir: @akun.tempat_lahir, tgl_lahir: @akun.tgl_lahir } }
    assert_redirected_to akun_url(@akun)
  end

  test "should destroy akun" do
    assert_difference('Akun.count', -1) do
      delete akun_url(@akun)
    end

    assert_redirected_to akuns_url
  end
end
