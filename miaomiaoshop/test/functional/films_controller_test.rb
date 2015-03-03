require 'test_helper'

class FilmsControllerTest < ActionController::TestCase
  setup do
    @film = films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film" do
    assert_difference('Film.count') do
      post :create, film: { category: @film.category, country: @film.country, description: @film.description, director: @film.director, length: @film.length, time: @film.time, title: @film.title }
    end

    assert_redirected_to film_path(assigns(:film))
  end

  test "should show film" do
    get :show, id: @film
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film
    assert_response :success
  end

  test "should update film" do
    put :update, id: @film, film: { category: @film.category, country: @film.country, description: @film.description, director: @film.director, length: @film.length, time: @film.time, title: @film.title }
    assert_redirected_to film_path(assigns(:film))
  end

  test "should destroy film" do
    assert_difference('Film.count', -1) do
      delete :destroy, id: @film
    end

    assert_redirected_to films_path
  end
end
