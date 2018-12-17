require "application_system_test_case"

class UktsTest < ApplicationSystemTestCase
  setup do
    @ukt = ukts(:one)
  end

  test "visiting the index" do
    visit ukts_url
    assert_selector "h1", text: "Ukts"
  end

  test "creating a Ukt" do
    visit ukts_url
    click_on "New Ukt"

    fill_in "Foto", with: @ukt.foto
    fill_in "Geup", with: @ukt.geup
    fill_in "Nama", with: @ukt.nama
    fill_in "No Reg", with: @ukt.no_reg
    fill_in "Sabuk", with: @ukt.sabuk
    fill_in "Tempat", with: @ukt.tempat
    fill_in "Tgl Lahir", with: @ukt.tgl_lahir
    click_on "Create Ukt"

    assert_text "Ukt was successfully created"
    click_on "Back"
  end

  test "updating a Ukt" do
    visit ukts_url
    click_on "Edit", match: :first

    fill_in "Foto", with: @ukt.foto
    fill_in "Geup", with: @ukt.geup
    fill_in "Nama", with: @ukt.nama
    fill_in "No Reg", with: @ukt.no_reg
    fill_in "Sabuk", with: @ukt.sabuk
    fill_in "Tempat", with: @ukt.tempat
    fill_in "Tgl Lahir", with: @ukt.tgl_lahir
    click_on "Update Ukt"

    assert_text "Ukt was successfully updated"
    click_on "Back"
  end

  test "destroying a Ukt" do
    visit ukts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ukt was successfully destroyed"
  end
end
