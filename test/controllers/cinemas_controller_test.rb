require "test_helper"

class CinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema = cinemas(:one)
  end

  test "should get index" do
    get cinemas_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_url
    assert_response :success
  end

  test "should create cinema" do
    assert_difference('Cinema.count') do
      post cinemas_url, params: { cinema: { movie_id: @cinema.movie_id, seats: @cinema.seats, work_hours_end: @cinema.work_hours_end, work_hours_start: @cinema.work_hours_start } }
    end

    assert_redirected_to cinema_url(Cinema.last)
  end

  test "should show cinema" do
    get cinema_url(@cinema)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_url(@cinema)
    assert_response :success
  end

  test "should update cinema" do
    patch cinema_url(@cinema), params: { cinema: { movie_id: @cinema.movie_id, seats: @cinema.seats, work_hours_end: @cinema.work_hours_end, work_hours_start: @cinema.work_hours_start } }
    assert_redirected_to cinema_url(@cinema)
  end

  test "should destroy cinema" do
    assert_difference('Cinema.count', -1) do
      delete cinema_url(@cinema)
    end

    assert_redirected_to cinemas_url
  end
end
