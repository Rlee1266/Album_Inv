require "application_system_test_case"

class AlbumInvsTest < ApplicationSystemTestCase
  setup do
    @album_inv = album_invs(:one)
  end

  test "visiting the index" do
    visit album_invs_url
    assert_selector "h1", text: "Album Invs"
  end

  test "creating a Album inv" do
    visit album_invs_url
    click_on "New Album Inv"

    fill_in "Genre", with: @album_inv.Genre
    fill_in "Plays", with: @album_inv.Plays
    fill_in "Title", with: @album_inv.Title
    fill_in "Year", with: @album_inv.Year
    fill_in "Dadded", with: @album_inv.dAdded
    click_on "Create Album inv"

    assert_text "Album inv was successfully created"
    click_on "Back"
  end

  test "updating a Album inv" do
    visit album_invs_url
    click_on "Edit", match: :first

    fill_in "Genre", with: @album_inv.Genre
    fill_in "Plays", with: @album_inv.Plays
    fill_in "Title", with: @album_inv.Title
    fill_in "Year", with: @album_inv.Year
    fill_in "Dadded", with: @album_inv.dAdded
    click_on "Update Album inv"

    assert_text "Album inv was successfully updated"
    click_on "Back"
  end

  test "destroying a Album inv" do
    visit album_invs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album inv was successfully destroyed"
  end
end
