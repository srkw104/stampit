require 'test_helper'

class StampsControllerTest < ActionController::TestCase
  setup do
    @stamp = stamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stamp" do
    assert_difference('Stamp.count') do
      post :create, stamp: { beacon_minor: @stamp.beacon_minor, deleted: @stamp.deleted, latitude: @stamp.latitude, longitude: @stamp.longitude, name: @stamp.name, tournament_id: @stamp.tournament_id }
    end

    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should show stamp" do
    get :show, id: @stamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stamp
    assert_response :success
  end

  test "should update stamp" do
    patch :update, id: @stamp, stamp: { beacon_minor: @stamp.beacon_minor, deleted: @stamp.deleted, latitude: @stamp.latitude, longitude: @stamp.longitude, name: @stamp.name, tournament_id: @stamp.tournament_id }
    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should destroy stamp" do
    assert_difference('Stamp.count', -1) do
      delete :destroy, id: @stamp
    end

    assert_redirected_to stamps_path
  end
end
