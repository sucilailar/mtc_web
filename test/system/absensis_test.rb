require "application_system_test_case"

class AbsensisTest < ApplicationSystemTestCase
  setup do
    @absensi = absensis(:one)
  end

  test "visiting the index" do
    visit absensis_url
    assert_selector "h1", text: "Absensis"
  end

  test "creating a Absensi" do
    visit absensis_url
    click_on "New Absensi"

    fill_in "Akun", with: @absensi.akun_id
    fill_in "Dojang", with: @absensi.dojang_id
    fill_in "Id Sekretaris", with: @absensi.id_sekretaris
    fill_in "Keterangan", with: @absensi.keterangan
    fill_in "Tgl", with: @absensi.tgl
    click_on "Create Absensi"

    assert_text "Absensi was successfully created"
    click_on "Back"
  end

  test "updating a Absensi" do
    visit absensis_url
    click_on "Edit", match: :first

    fill_in "Akun", with: @absensi.akun_id
    fill_in "Dojang", with: @absensi.dojang_id
    fill_in "Id Sekretaris", with: @absensi.id_sekretaris
    fill_in "Keterangan", with: @absensi.keterangan
    fill_in "Tgl", with: @absensi.tgl
    click_on "Update Absensi"

    assert_text "Absensi was successfully updated"
    click_on "Back"
  end

  test "destroying a Absensi" do
    visit absensis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Absensi was successfully destroyed"
  end
end
