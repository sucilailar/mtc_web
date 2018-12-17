require 'test_helper'

class SuratsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surat = surats(:one)
  end

  test "should get index" do
    get surats_url
    assert_response :success
  end

  test "should get new" do
    get new_surat_url
    assert_response :success
  end

  test "should create surat" do
    assert_difference('Surat.count') do
      post surats_url, params: { surat: { no_surat: @surat.no_surat, perihal: @surat.perihal } }
    end

    assert_redirected_to surat_url(Surat.last)
  end

  test "should show surat" do
    get surat_url(@surat)
    assert_response :success
  end

  test "should get edit" do
    get edit_surat_url(@surat)
    assert_response :success
  end

  test "should update surat" do
    patch surat_url(@surat), params: { surat: { no_surat: @surat.no_surat, perihal: @surat.perihal } }
    assert_redirected_to surat_url(@surat)
  end

  test "should destroy surat" do
    assert_difference('Surat.count', -1) do
      delete surat_url(@surat)
    end

    assert_redirected_to surats_url
  end
end
