require 'test_helper'

class AlbumPubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_pub = album_pubs(:one)
  end

  test "should get index" do
    get album_pubs_url
    assert_response :success
  end

  test "should get new" do
    get new_album_pub_url
    assert_response :success
  end

  test "should create album_pub" do
    assert_difference('AlbumPub.count') do
      post album_pubs_url, params: { album_pub: { name: @album_pub.name } }
    end

    assert_redirected_to album_pub_url(AlbumPub.last)
  end

  test "should show album_pub" do
    get album_pub_url(@album_pub)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_pub_url(@album_pub)
    assert_response :success
  end

  test "should update album_pub" do
    patch album_pub_url(@album_pub), params: { album_pub: { name: @album_pub.name } }
    assert_redirected_to album_pub_url(@album_pub)
  end

  test "should destroy album_pub" do
    assert_difference('AlbumPub.count', -1) do
      delete album_pub_url(@album_pub)
    end

    assert_redirected_to album_pubs_url
  end
end
