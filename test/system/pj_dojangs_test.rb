require "application_system_test_case"

class PjDojangsTest < ApplicationSystemTestCase
  setup do
    @pj_dojang = pj_dojangs(:one)
  end

  test "visiting the index" do
    visit pj_dojangs_url
    assert_selector "h1", text: "Pj Dojangs"
  end

  test "creating a Pj dojang" do
    visit pj_dojangs_url
    click_on "New Pj Dojang"

    fill_in "Akun", with: @pj_dojang.akun_id
    fill_in "Dojang", with: @pj_dojang.dojang_id
    click_on "Create Pj dojang"

    assert_text "Pj dojang was successfully created"
    click_on "Back"
  end

  test "updating a Pj dojang" do
    visit pj_dojangs_url
    click_on "Edit", match: :first

    fill_in "Akun", with: @pj_dojang.akun_id
    fill_in "Dojang", with: @pj_dojang.dojang_id
    click_on "Update Pj dojang"

    assert_text "Pj dojang was successfully updated"
    click_on "Back"
  end

  test "destroying a Pj dojang" do
    visit pj_dojangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pj dojang was successfully destroyed"
  end
end
