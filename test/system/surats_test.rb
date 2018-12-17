require "application_system_test_case"

class SuratsTest < ApplicationSystemTestCase
  setup do
    @surat = surats(:one)
  end

  test "visiting the index" do
    visit surats_url
    assert_selector "h1", text: "Surats"
  end

  test "creating a Surat" do
    visit surats_url
    click_on "New Surat"

    fill_in "No Surat", with: @surat.no_surat
    fill_in "Perihal", with: @surat.perihal
    click_on "Create Surat"

    assert_text "Surat was successfully created"
    click_on "Back"
  end

  test "updating a Surat" do
    visit surats_url
    click_on "Edit", match: :first

    fill_in "No Surat", with: @surat.no_surat
    fill_in "Perihal", with: @surat.perihal
    click_on "Update Surat"

    assert_text "Surat was successfully updated"
    click_on "Back"
  end

  test "destroying a Surat" do
    visit surats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Surat was successfully destroyed"
  end
end
