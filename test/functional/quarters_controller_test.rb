require 'test_helper'

class QuartersControllerTest < ActionController::TestCase
  setup do
    @quarter = quarters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quarters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quarter" do
    assert_difference('Quarter.count') do
      post :create, quarter: {  }
    end

    assert_redirected_to quarter_path(assigns(:quarter))
  end

  test "should show quarter" do
    get :show, id: @quarter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quarter
    assert_response :success
  end

  test "should update quarter" do
    put :update, id: @quarter, quarter: {  }
    assert_redirected_to quarter_path(assigns(:quarter))
  end

  test "should destroy quarter" do
    assert_difference('Quarter.count', -1) do
      delete :destroy, id: @quarter
    end

    assert_redirected_to quarters_path
  end
end
