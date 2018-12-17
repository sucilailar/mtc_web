require 'test_helper'

class AbsensisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @absensi = absensis(:one)
  end

  test "should get index" do
    get absensis_url
    assert_response :success
  end

  test "should get new" do
    get new_absensi_url
    assert_response :success
  end

  test "should create absensi" do
    assert_difference('Absensi.count') do
      post absensis_url, params: { absensi: { akun_id: @absensi.akun_id, dojang_id: @absensi.dojang_id, id_sekretaris: @absensi.id_sekretaris, keterangan: @absensi.keterangan, tgl: @absensi.tgl } }
    end

    assert_redirected_to absensi_url(Absensi.last)
  end

  test "should show absensi" do
    get absensi_url(@absensi)
    assert_response :success
  end

  test "should get edit" do
    get edit_absensi_url(@absensi)
    assert_response :success
  end

  test "should update absensi" do
    patch absensi_url(@absensi), params: { absensi: { akun_id: @absensi.akun_id, dojang_id: @absensi.dojang_id, id_sekretaris: @absensi.id_sekretaris, keterangan: @absensi.keterangan, tgl: @absensi.tgl } }
    assert_redirected_to absensi_url(@absensi)
  end

  test "should destroy absensi" do
    assert_difference('Absensi.count', -1) do
      delete absensi_url(@absensi)
    end

    assert_redirected_to absensis_url
  end
end
