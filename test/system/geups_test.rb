require "application_system_test_case"

class GeupsTest < ApplicationSystemTestCase
  setup do
    @geup = geups(:one)
  end

  test "visiting the index" do
    visit geups_url
    assert_selector "h1", text: "Geups"
  end

  test "creating a Geup" do
    visit geups_url
    click_on "New Geup"

    fill_in "Geup", with: @geup.geup
    fill_in "Warna String", with: @geup.warna_string
    click_on "Create Geup"

    assert_text "Geup was successfully created"
    click_on "Back"
  end

  test "updating a Geup" do
    visit geups_url
    click_on "Edit", match: :first

    fill_in "Geup", with: @geup.geup
    fill_in "Warna String", with: @geup.warna_string
    click_on "Update Geup"

    assert_text "Geup was successfully updated"
    click_on "Back"
  end

  test "destroying a Geup" do
    visit geups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Geup was successfully destroyed"
  end
end
