require 'test_helper'

class TodoListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get todo_lists_new_url
    assert_response :success
  end

end
