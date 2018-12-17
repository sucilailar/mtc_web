require "application_system_test_case"

class DojangsTest < ApplicationSystemTestCase
  setup do
    @dojang = dojangs(:one)
  end

  test "visiting the index" do
    visit dojangs_url
    assert_selector "h1", text: "Dojangs"
  end

  test "creating a Dojang" do
    visit dojangs_url
    click_on "New Dojang"

    fill_in "Alamat", with: @dojang.alamat
    fill_in "Nama Dojang", with: @dojang.nama_dojang
    fill_in "Penanggung Jawab", with: @dojang.penanggung_jawab
    click_on "Create Dojang"

    assert_text "Dojang was successfully created"
    click_on "Back"
  end

  test "updating a Dojang" do
    visit dojangs_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @dojang.alamat
    fill_in "Nama Dojang", with: @dojang.nama_dojang
    fill_in "Penanggung Jawab", with: @dojang.penanggung_jawab
    click_on "Update Dojang"

    assert_text "Dojang was successfully updated"
    click_on "Back"
  end

  test "destroying a Dojang" do
    visit dojangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dojang was successfully destroyed"
  end
end
