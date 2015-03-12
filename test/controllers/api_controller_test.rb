require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get get_tournaments" do
    get :get_tournaments
    assert_response :success
  end

end
