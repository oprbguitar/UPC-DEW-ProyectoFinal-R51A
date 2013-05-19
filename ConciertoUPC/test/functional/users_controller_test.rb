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
      post :create, user: { ap_materno: @user.ap_materno, ap_paterno: @user.ap_paterno, email: @user.email, nu_doc_ident: @user.nu_doc_ident, prenombre: @user.prenombre, sexo: @user.sexo, ti_doc_ident: @user.ti_doc_ident, ti_persona: @user.ti_persona }
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
    put :update, id: @user, user: { ap_materno: @user.ap_materno, ap_paterno: @user.ap_paterno, email: @user.email, nu_doc_ident: @user.nu_doc_ident, prenombre: @user.prenombre, sexo: @user.sexo, ti_doc_ident: @user.ti_doc_ident, ti_persona: @user.ti_persona }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
