require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get task_main_url
    assert_response :success
  end

  test "should get contacts" do
    get task_contacts_url
    assert_response :success
  end

end
