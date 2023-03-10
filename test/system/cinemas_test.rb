require "application_system_test_case"

class CinemasTest < ApplicationSystemTestCase
  setup do
    @cinema = cinemas(:one)
  end

  test "visiting the index" do
    visit cinemas_url
    assert_selector "h1", text: "Cinemas"
  end

  test "creating a Cinema" do
    visit cinemas_url
    click_on "New Cinema"

    fill_in "Movie", with: @cinema.movie_id
    fill_in "Seats", with: @cinema.seats
    fill_in "Work hours end", with: @cinema.work_hours_end
    fill_in "Work hours start", with: @cinema.work_hours_start
    click_on "Create Cinema"

    assert_text "Cinema was successfully created"
    click_on "Back"
  end

  test "updating a Cinema" do
    visit cinemas_url
    click_on "Edit", match: :first

    fill_in "Movie", with: @cinema.movie_id
    fill_in "Seats", with: @cinema.seats
    fill_in "Work hours end", with: @cinema.work_hours_end
    fill_in "Work hours start", with: @cinema.work_hours_start
    click_on "Update Cinema"

    assert_text "Cinema was successfully updated"
    click_on "Back"
  end

  test "destroying a Cinema" do
    visit cinemas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cinema was successfully destroyed"
  end
end
