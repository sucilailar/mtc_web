require "application_system_test_case"

class DataUktsTest < ApplicationSystemTestCase
  setup do
    @data_ukt = data_ukts(:one)
  end

  test "visiting the index" do
    visit data_ukts_url
    assert_selector "h1", text: "Data Ukts"
  end

  test "creating a Data ukt" do
    visit data_ukts_url
    click_on "New Data Ukt"

    fill_in "Jumlah", with: @data_ukt.jumlah
    fill_in "Periode", with: @data_ukt.periode
    click_on "Create Data ukt"

    assert_text "Data ukt was successfully created"
    click_on "Back"
  end

  test "updating a Data ukt" do
    visit data_ukts_url
    click_on "Edit", match: :first

    fill_in "Jumlah", with: @data_ukt.jumlah
    fill_in "Periode", with: @data_ukt.periode
    click_on "Update Data ukt"

    assert_text "Data ukt was successfully updated"
    click_on "Back"
  end

  test "destroying a Data ukt" do
    visit data_ukts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data ukt was successfully destroyed"
  end
end
