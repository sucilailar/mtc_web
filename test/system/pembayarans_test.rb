require "application_system_test_case"

class PembayaransTest < ApplicationSystemTestCase
  setup do
    @pembayaran = pembayarans(:one)
  end

  test "visiting the index" do
    visit pembayarans_url
    assert_selector "h1", text: "Pembayarans"
  end

  test "creating a Pembayaran" do
    visit pembayarans_url
    click_on "New Pembayaran"

    fill_in "Akun", with: @pembayaran.akun_id
    fill_in "Cicilan", with: @pembayaran.cicilan
    fill_in "Id Bendahara", with: @pembayaran.id_bendahara
    fill_in "Kategori Kegiatan", with: @pembayaran.kategori_kegiatan_id
    fill_in "Keterangan", with: @pembayaran.keterangan
    fill_in "Nominal", with: @pembayaran.nominal
    click_on "Create Pembayaran"

    assert_text "Pembayaran was successfully created"
    click_on "Back"
  end

  test "updating a Pembayaran" do
    visit pembayarans_url
    click_on "Edit", match: :first

    fill_in "Akun", with: @pembayaran.akun_id
    fill_in "Cicilan", with: @pembayaran.cicilan
    fill_in "Id Bendahara", with: @pembayaran.id_bendahara
    fill_in "Kategori Kegiatan", with: @pembayaran.kategori_kegiatan_id
    fill_in "Keterangan", with: @pembayaran.keterangan
    fill_in "Nominal", with: @pembayaran.nominal
    click_on "Update Pembayaran"

    assert_text "Pembayaran was successfully updated"
    click_on "Back"
  end

  test "destroying a Pembayaran" do
    visit pembayarans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pembayaran was successfully destroyed"
  end
end
