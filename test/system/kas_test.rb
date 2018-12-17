require "application_system_test_case"

class KasTest < ApplicationSystemTestCase
  setup do
    @ka = kas(:one)
  end

  test "visiting the index" do
    visit kas_url
    assert_selector "h1", text: "Kas"
  end

  test "creating a Ka" do
    visit kas_url
    click_on "New Ka"

    fill_in "Bendahara", with: @ka.bendahara_id
    fill_in "Debit", with: @ka.debit
    fill_in "Keterangan", with: @ka.keterangan
    fill_in "Kredit", with: @ka.kredit
    fill_in "Saldo", with: @ka.saldo
    click_on "Create Ka"

    assert_text "Ka was successfully created"
    click_on "Back"
  end

  test "updating a Ka" do
    visit kas_url
    click_on "Edit", match: :first

    fill_in "Bendahara", with: @ka.bendahara_id
    fill_in "Debit", with: @ka.debit
    fill_in "Keterangan", with: @ka.keterangan
    fill_in "Kredit", with: @ka.kredit
    fill_in "Saldo", with: @ka.saldo
    click_on "Update Ka"

    assert_text "Ka was successfully updated"
    click_on "Back"
  end

  test "destroying a Ka" do
    visit kas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ka was successfully destroyed"
  end
end
