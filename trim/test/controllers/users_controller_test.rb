require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { communication: @user.communication, css: @user.css, database: @user.database, debugging: @user.debugging, email: @user.email, fullname: @user.fullname, html: @user.html, javascript: @user.javascript, modular: @user.modular, oop: @user.oop, problem: @user.problem, repo: @user.repo, self: @user.self, team: @user.team, testing: @user.testing, url: @user.url, workflow: @user.workflow }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { communication: @user.communication, css: @user.css, database: @user.database, debugging: @user.debugging, email: @user.email, fullname: @user.fullname, html: @user.html, javascript: @user.javascript, modular: @user.modular, oop: @user.oop, problem: @user.problem, repo: @user.repo, self: @user.self, team: @user.team, testing: @user.testing, url: @user.url, workflow: @user.workflow }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
