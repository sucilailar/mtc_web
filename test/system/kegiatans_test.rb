require "application_system_test_case"

class KegiatansTest < ApplicationSystemTestCase
  setup do
    @kegiatan = kegiatans(:one)
  end

  test "visiting the index" do
    visit kegiatans_url
    assert_selector "h1", text: "Kegiatans"
  end

  test "creating a Kegiatan" do
    visit kegiatans_url
    click_on "New Kegiatan"

    fill_in "Biaya", with: @kegiatan.biaya
    fill_in "Nama Kegiatan", with: @kegiatan.nama_kegiatan
    fill_in "Tempat", with: @kegiatan.tempat
    fill_in "Tgl", with: @kegiatan.tgl
    click_on "Create Kegiatan"

    assert_text "Kegiatan was successfully created"
    click_on "Back"
  end

  test "updating a Kegiatan" do
    visit kegiatans_url
    click_on "Edit", match: :first

    fill_in "Biaya", with: @kegiatan.biaya
    fill_in "Nama Kegiatan", with: @kegiatan.nama_kegiatan
    fill_in "Tempat", with: @kegiatan.tempat
    fill_in "Tgl", with: @kegiatan.tgl
    click_on "Update Kegiatan"

    assert_text "Kegiatan was successfully updated"
    click_on "Back"
  end

  test "destroying a Kegiatan" do
    visit kegiatans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kegiatan was successfully destroyed"
  end
end
