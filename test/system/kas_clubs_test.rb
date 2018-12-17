require "application_system_test_case"

class KasClubsTest < ApplicationSystemTestCase
  setup do
    @kas_club = kas_clubs(:one)
  end

  test "visiting the index" do
    visit kas_clubs_url
    assert_selector "h1", text: "Kas Clubs"
  end

  test "creating a Kas club" do
    visit kas_clubs_url
    click_on "New Kas Club"

    fill_in "Debit", with: @kas_club.debit
    fill_in "Keterangan", with: @kas_club.keterangan
    fill_in "Kredit", with: @kas_club.kredit
    fill_in "Saldo", with: @kas_club.saldo
    click_on "Create Kas club"

    assert_text "Kas club was successfully created"
    click_on "Back"
  end

  test "updating a Kas club" do
    visit kas_clubs_url
    click_on "Edit", match: :first

    fill_in "Debit", with: @kas_club.debit
    fill_in "Keterangan", with: @kas_club.keterangan
    fill_in "Kredit", with: @kas_club.kredit
    fill_in "Saldo", with: @kas_club.saldo
    click_on "Update Kas club"

    assert_text "Kas club was successfully updated"
    click_on "Back"
  end

  test "destroying a Kas club" do
    visit kas_clubs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kas club was successfully destroyed"
  end
end
