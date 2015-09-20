require 'test_helper'

class StayTimesControllerTest < ActionController::TestCase
  setup do
    @stay_time = stay_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stay_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stay_time" do
    assert_difference('StayTime.count') do
      post :create, stay_time: { arrive_date: @stay_time.arrive_date, country_stay: @stay_time.country_stay, day_stay: @stay_time.day_stay, leave_date: @stay_time.leave_date, nationality: @stay_time.nationality }
    end

    assert_redirected_to stay_time_path(assigns(:stay_time))
  end

  test "should show stay_time" do
    get :show, id: @stay_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stay_time
    assert_response :success
  end

  test "should update stay_time" do
    patch :update, id: @stay_time, stay_time: { arrive_date: @stay_time.arrive_date, country_stay: @stay_time.country_stay, day_stay: @stay_time.day_stay, leave_date: @stay_time.leave_date, nationality: @stay_time.nationality }
    assert_redirected_to stay_time_path(assigns(:stay_time))
  end

  test "should destroy stay_time" do
    assert_difference('StayTime.count', -1) do
      delete :destroy, id: @stay_time
    end

    assert_redirected_to stay_times_path
  end
end
