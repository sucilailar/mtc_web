require "application_system_test_case"

class KategoriPembayaransTest < ApplicationSystemTestCase
  setup do
    @kategori_pembayaran = kategori_pembayarans(:one)
  end

  test "visiting the index" do
    visit kategori_pembayarans_url
    assert_selector "h1", text: "Kategori Pembayarans"
  end

  test "creating a Kategori pembayaran" do
    visit kategori_pembayarans_url
    click_on "New Kategori Pembayaran"

    fill_in "Katagori Pembayaran", with: @kategori_pembayaran.katagori_pembayaran
    fill_in "Nominal", with: @kategori_pembayaran.nominal
    click_on "Create Kategori pembayaran"

    assert_text "Kategori pembayaran was successfully created"
    click_on "Back"
  end

  test "updating a Kategori pembayaran" do
    visit kategori_pembayarans_url
    click_on "Edit", match: :first

    fill_in "Katagori Pembayaran", with: @kategori_pembayaran.katagori_pembayaran
    fill_in "Nominal", with: @kategori_pembayaran.nominal
    click_on "Update Kategori pembayaran"

    assert_text "Kategori pembayaran was successfully updated"
    click_on "Back"
  end

  test "destroying a Kategori pembayaran" do
    visit kategori_pembayarans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kategori pembayaran was successfully destroyed"
  end
end
