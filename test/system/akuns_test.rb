require "application_system_test_case"

class AkunsTest < ApplicationSystemTestCase
  setup do
    @akun = akuns(:one)
  end

  test "visiting the index" do
    visit akuns_url
    assert_selector "h1", text: "Akuns"
  end

  test "creating a Akun" do
    visit akuns_url
    click_on "New Akun"

    fill_in "Alamat", with: @akun.alamat
    fill_in "Angkatan", with: @akun.angkatan
    fill_in "Dojang", with: @akun.dojang
    fill_in "Geup", with: @akun.geup
    fill_in "Nama", with: @akun.nama
    fill_in "No Reg", with: @akun.no_reg
    fill_in "Pekerjaan", with: @akun.pekerjaan
    fill_in "Role", with: @akun.role_id
    fill_in "Tahun Masuk", with: @akun.tahun_masuk
    fill_in "Tempat Lahir", with: @akun.tempat_lahir
    fill_in "Tgl Lahir", with: @akun.tgl_lahir
    click_on "Create Akun"

    assert_text "Akun was successfully created"
    click_on "Back"
  end

  test "updating a Akun" do
    visit akuns_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @akun.alamat
    fill_in "Angkatan", with: @akun.angkatan
    fill_in "Dojang", with: @akun.dojang
    fill_in "Geup", with: @akun.geup
    fill_in "Nama", with: @akun.nama
    fill_in "No Reg", with: @akun.no_reg
    fill_in "Pekerjaan", with: @akun.pekerjaan
    fill_in "Role", with: @akun.role_id
    fill_in "Tahun Masuk", with: @akun.tahun_masuk
    fill_in "Tempat Lahir", with: @akun.tempat_lahir
    fill_in "Tgl Lahir", with: @akun.tgl_lahir
    click_on "Update Akun"

    assert_text "Akun was successfully updated"
    click_on "Back"
  end

  test "destroying a Akun" do
    visit akuns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Akun was successfully destroyed"
  end
end
