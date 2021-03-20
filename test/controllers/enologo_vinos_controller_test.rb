require 'test_helper'

class EnologoVinosControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get enologo_vinos_update_url
    assert_response :success
  end

end
