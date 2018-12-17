require 'test_helper'

class KasSmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kas_sma = kas_smas(:one)
  end

  test "should get index" do
    get kas_smas_url
    assert_response :success
  end

  test "should get new" do
    get new_kas_sma_url
    assert_response :success
  end

  test "should create kas_sma" do
    assert_difference('KasSma.count') do
      post kas_smas_url, params: { kas_sma: { debit: @kas_sma.debit, keterangan: @kas_sma.keterangan, kredit: @kas_sma.kredit, saldo: @kas_sma.saldo } }
    end

    assert_redirected_to kas_sma_url(KasSma.last)
  end

  test "should show kas_sma" do
    get kas_sma_url(@kas_sma)
    assert_response :success
  end

  test "should get edit" do
    get edit_kas_sma_url(@kas_sma)
    assert_response :success
  end

  test "should update kas_sma" do
    patch kas_sma_url(@kas_sma), params: { kas_sma: { debit: @kas_sma.debit, keterangan: @kas_sma.keterangan, kredit: @kas_sma.kredit, saldo: @kas_sma.saldo } }
    assert_redirected_to kas_sma_url(@kas_sma)
  end

  test "should destroy kas_sma" do
    assert_difference('KasSma.count', -1) do
      delete kas_sma_url(@kas_sma)
    end

    assert_redirected_to kas_smas_url
  end
end
