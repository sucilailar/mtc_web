require "application_system_test_case"

class PengurusTest < ApplicationSystemTestCase
  setup do
    @penguru = pengurus(:one)
  end

  test "visiting the index" do
    visit pengurus_url
    assert_selector "h1", text: "Pengurus"
  end

  test "creating a Penguru" do
    visit pengurus_url
    click_on "New Penguru"

    fill_in "Akun", with: @penguru.akun_id
    fill_in "Periode Akhir", with: @penguru.periode_akhir
    fill_in "Periode Awal", with: @penguru.periode_awal
    fill_in "Role", with: @penguru.role_id
    click_on "Create Penguru"

    assert_text "Penguru was successfully created"
    click_on "Back"
  end

  test "updating a Penguru" do
    visit pengurus_url
    click_on "Edit", match: :first

    fill_in "Akun", with: @penguru.akun_id
    fill_in "Periode Akhir", with: @penguru.periode_akhir
    fill_in "Periode Awal", with: @penguru.periode_awal
    fill_in "Role", with: @penguru.role_id
    click_on "Update Penguru"

    assert_text "Penguru was successfully updated"
    click_on "Back"
  end

  test "destroying a Penguru" do
    visit pengurus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Penguru was successfully destroyed"
  end
end
