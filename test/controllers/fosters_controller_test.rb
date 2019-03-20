require 'test_helper'

class FostersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get fosters_create_url
    assert_response :success
  end

end
