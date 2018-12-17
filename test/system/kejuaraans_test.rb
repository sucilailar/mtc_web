require "application_system_test_case"

class KejuaraansTest < ApplicationSystemTestCase
  setup do
    @kejuaraan = kejuaraans(:one)
  end

  test "visiting the index" do
    visit kejuaraans_url
    assert_selector "h1", text: "Kejuaraans"
  end

  test "creating a Kejuaraan" do
    visit kejuaraans_url
    click_on "New Kejuaraan"

    fill_in "Event", with: @kejuaraan.event_id
    fill_in "Jenis Kejuaraan", with: @kejuaraan.jenis_kejuaraan
    fill_in "Kategori Under", with: @kejuaraan.kategori_under
    fill_in "Perolehan", with: @kejuaraan.perolehan
    fill_in "Peserta", with: @kejuaraan.peserta_id
    fill_in "Prestasi Pemula", with: @kejuaraan.prestasi_pemula
    fill_in "Tingkat", with: @kejuaraan.tingkat
    click_on "Create Kejuaraan"

    assert_text "Kejuaraan was successfully created"
    click_on "Back"
  end

  test "updating a Kejuaraan" do
    visit kejuaraans_url
    click_on "Edit", match: :first

    fill_in "Event", with: @kejuaraan.event_id
    fill_in "Jenis Kejuaraan", with: @kejuaraan.jenis_kejuaraan
    fill_in "Kategori Under", with: @kejuaraan.kategori_under
    fill_in "Perolehan", with: @kejuaraan.perolehan
    fill_in "Peserta", with: @kejuaraan.peserta_id
    fill_in "Prestasi Pemula", with: @kejuaraan.prestasi_pemula
    fill_in "Tingkat", with: @kejuaraan.tingkat
    click_on "Update Kejuaraan"

    assert_text "Kejuaraan was successfully updated"
    click_on "Back"
  end

  test "destroying a Kejuaraan" do
    visit kejuaraans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kejuaraan was successfully destroyed"
  end
end
