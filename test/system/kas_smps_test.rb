require "application_system_test_case"

class KasSmpsTest < ApplicationSystemTestCase
  setup do
    @kas_smp = kas_smps(:one)
  end

  test "visiting the index" do
    visit kas_smps_url
    assert_selector "h1", text: "Kas Smps"
  end

  test "creating a Kas smp" do
    visit kas_smps_url
    click_on "New Kas Smp"

    fill_in "Debit", with: @kas_smp.debit
    fill_in "Keterangan", with: @kas_smp.keterangan
    fill_in "Kredit", with: @kas_smp.kredit
    fill_in "Saldo", with: @kas_smp.saldo
    click_on "Create Kas smp"

    assert_text "Kas smp was successfully created"
    click_on "Back"
  end

  test "updating a Kas smp" do
    visit kas_smps_url
    click_on "Edit", match: :first

    fill_in "Debit", with: @kas_smp.debit
    fill_in "Keterangan", with: @kas_smp.keterangan
    fill_in "Kredit", with: @kas_smp.kredit
    fill_in "Saldo", with: @kas_smp.saldo
    click_on "Update Kas smp"

    assert_text "Kas smp was successfully updated"
    click_on "Back"
  end

  test "destroying a Kas smp" do
    visit kas_smps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kas smp was successfully destroyed"
  end
end
