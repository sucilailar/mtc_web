require 'test_helper'

class KasClubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kas_club = kas_clubs(:one)
  end

  test "should get index" do
    get kas_clubs_url
    assert_response :success
  end

  test "should get new" do
    get new_kas_club_url
    assert_response :success
  end

  test "should create kas_club" do
    assert_difference('KasClub.count') do
      post kas_clubs_url, params: { kas_club: { debit: @kas_club.debit, keterangan: @kas_club.keterangan, kredit: @kas_club.kredit, saldo: @kas_club.saldo } }
    end

    assert_redirected_to kas_club_url(KasClub.last)
  end

  test "should show kas_club" do
    get kas_club_url(@kas_club)
    assert_response :success
  end

  test "should get edit" do
    get edit_kas_club_url(@kas_club)
    assert_response :success
  end

  test "should update kas_club" do
    patch kas_club_url(@kas_club), params: { kas_club: { debit: @kas_club.debit, keterangan: @kas_club.keterangan, kredit: @kas_club.kredit, saldo: @kas_club.saldo } }
    assert_redirected_to kas_club_url(@kas_club)
  end

  test "should destroy kas_club" do
    assert_difference('KasClub.count', -1) do
      delete kas_club_url(@kas_club)
    end

    assert_redirected_to kas_clubs_url
  end
end
