require "application_system_test_case"

class AlbumPubsTest < ApplicationSystemTestCase
  setup do
    @album_pub = album_pubs(:one)
  end

  test "visiting the index" do
    visit album_pubs_url
    assert_selector "h1", text: "Album Pubs"
  end

  test "creating a Album pub" do
    visit album_pubs_url
    click_on "New Album Pub"

    fill_in "Name", with: @album_pub.name
    click_on "Create Album pub"

    assert_text "Album pub was successfully created"
    click_on "Back"
  end

  test "updating a Album pub" do
    visit album_pubs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @album_pub.name
    click_on "Update Album pub"

    assert_text "Album pub was successfully updated"
    click_on "Back"
  end

  test "destroying a Album pub" do
    visit album_pubs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album pub was successfully destroyed"
  end
end
