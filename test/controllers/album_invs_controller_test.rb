require 'test_helper'

class AlbumInvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_inv = album_invs(:one)
  end

  test "should get index" do
    get album_invs_url
    assert_response :success
  end

  test "should get new" do
    get new_album_inv_url
    assert_response :success
  end

  test "should create album_inv" do
    assert_difference('AlbumInv.count') do
      post album_invs_url, params: { album_inv: { Genre: @album_inv.Genre, Plays: @album_inv.Plays, Title: @album_inv.Title, Year: @album_inv.Year, dAdded: @album_inv.dAdded } }
    end

    assert_redirected_to album_inv_url(AlbumInv.last)
  end

  test "should show album_inv" do
    get album_inv_url(@album_inv)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_inv_url(@album_inv)
    assert_response :success
  end

  test "should update album_inv" do
    patch album_inv_url(@album_inv), params: { album_inv: { Genre: @album_inv.Genre, Plays: @album_inv.Plays, Title: @album_inv.Title, Year: @album_inv.Year, dAdded: @album_inv.dAdded } }
    assert_redirected_to album_inv_url(@album_inv)
  end

  test "should destroy album_inv" do
    assert_difference('AlbumInv.count', -1) do
      delete album_inv_url(@album_inv)
    end

    assert_redirected_to album_invs_url
  end
end
