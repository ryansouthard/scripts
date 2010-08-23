require 'test_helper'

class SrvrsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:srvrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create srvr" do
    assert_difference('Srvr.count') do
      post :create, :srvr => { }
    end

    assert_redirected_to srvr_path(assigns(:srvr))
  end

  test "should show srvr" do
    get :show, :id => srvrs(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => srvrs(:one).id
    assert_response :success
  end

  test "should update srvr" do
    put :update, :id => srvrs(:one).id, :srvr => { }
    assert_redirected_to srvr_path(assigns(:srvr))
  end

  test "should destroy srvr" do
    assert_difference('Srvr.count', -1) do
      delete :destroy, :id => srvrs(:one).id
    end

    assert_redirected_to srvrs_path
  end
end
