require 'test_helper'

class KasSmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kas_smp = kas_smps(:one)
  end

  test "should get index" do
    get kas_smps_url
    assert_response :success
  end

  test "should get new" do
    get new_kas_smp_url
    assert_response :success
  end

  test "should create kas_smp" do
    assert_difference('KasSmp.count') do
      post kas_smps_url, params: { kas_smp: { debit: @kas_smp.debit, keterangan: @kas_smp.keterangan, kredit: @kas_smp.kredit, saldo: @kas_smp.saldo } }
    end

    assert_redirected_to kas_smp_url(KasSmp.last)
  end

  test "should show kas_smp" do
    get kas_smp_url(@kas_smp)
    assert_response :success
  end

  test "should get edit" do
    get edit_kas_smp_url(@kas_smp)
    assert_response :success
  end

  test "should update kas_smp" do
    patch kas_smp_url(@kas_smp), params: { kas_smp: { debit: @kas_smp.debit, keterangan: @kas_smp.keterangan, kredit: @kas_smp.kredit, saldo: @kas_smp.saldo } }
    assert_redirected_to kas_smp_url(@kas_smp)
  end

  test "should destroy kas_smp" do
    assert_difference('KasSmp.count', -1) do
      delete kas_smp_url(@kas_smp)
    end

    assert_redirected_to kas_smps_url
  end
end
