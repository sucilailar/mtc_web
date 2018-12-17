require "application_system_test_case"

class DataKejuaraansTest < ApplicationSystemTestCase
  setup do
    @data_kejuaraan = data_kejuaraans(:one)
  end

  test "visiting the index" do
    visit data_kejuaraans_url
    assert_selector "h1", text: "Data Kejuaraans"
  end

  test "creating a Data kejuaraan" do
    visit data_kejuaraans_url
    click_on "New Data Kejuaraan"

    fill_in "Akun", with: @data_kejuaraan.akun_id
    fill_in "Jenis Kejuaraan", with: @data_kejuaraan.jenis_kejuaraan
    fill_in "Kategori Under", with: @data_kejuaraan.kategori_under
    fill_in "Kegiatan", with: @data_kejuaraan.kegiatan_id
    fill_in "Perolehan", with: @data_kejuaraan.perolehan
    fill_in "Prestasi Pemula", with: @data_kejuaraan.prestasi_pemula
    fill_in "Tingkat", with: @data_kejuaraan.tingkat
    click_on "Create Data kejuaraan"

    assert_text "Data kejuaraan was successfully created"
    click_on "Back"
  end

  test "updating a Data kejuaraan" do
    visit data_kejuaraans_url
    click_on "Edit", match: :first

    fill_in "Akun", with: @data_kejuaraan.akun_id
    fill_in "Jenis Kejuaraan", with: @data_kejuaraan.jenis_kejuaraan
    fill_in "Kategori Under", with: @data_kejuaraan.kategori_under
    fill_in "Kegiatan", with: @data_kejuaraan.kegiatan_id
    fill_in "Perolehan", with: @data_kejuaraan.perolehan
    fill_in "Prestasi Pemula", with: @data_kejuaraan.prestasi_pemula
    fill_in "Tingkat", with: @data_kejuaraan.tingkat
    click_on "Update Data kejuaraan"

    assert_text "Data kejuaraan was successfully updated"
    click_on "Back"
  end

  test "destroying a Data kejuaraan" do
    visit data_kejuaraans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data kejuaraan was successfully destroyed"
  end
end
