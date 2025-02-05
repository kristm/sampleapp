require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "welcome page should work" do
    get root_path
    assert_response :success
  end

  test "admin page should not work" do
    get '/admin'
    assert_response :not_found
  end
end
