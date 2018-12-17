require "application_system_test_case"

class KasSmasTest < ApplicationSystemTestCase
  setup do
    @kas_sma = kas_smas(:one)
  end

  test "visiting the index" do
    visit kas_smas_url
    assert_selector "h1", text: "Kas Smas"
  end

  test "creating a Kas sma" do
    visit kas_smas_url
    click_on "New Kas Sma"

    fill_in "Debit", with: @kas_sma.debit
    fill_in "Keterangan", with: @kas_sma.keterangan
    fill_in "Kredit", with: @kas_sma.kredit
    fill_in "Saldo", with: @kas_sma.saldo
    click_on "Create Kas sma"

    assert_text "Kas sma was successfully created"
    click_on "Back"
  end

  test "updating a Kas sma" do
    visit kas_smas_url
    click_on "Edit", match: :first

    fill_in "Debit", with: @kas_sma.debit
    fill_in "Keterangan", with: @kas_sma.keterangan
    fill_in "Kredit", with: @kas_sma.kredit
    fill_in "Saldo", with: @kas_sma.saldo
    click_on "Update Kas sma"

    assert_text "Kas sma was successfully updated"
    click_on "Back"
  end

  test "destroying a Kas sma" do
    visit kas_smas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kas sma was successfully destroyed"
  end
end
