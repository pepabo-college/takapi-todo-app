require 'test_helper'

class TasksControllerTest < ActionController::TestCase

  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

end
