require 'test_helper'

class VinosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vinos_index_url
    assert_response :success
  end

  test "should get create" do
    get vinos_create_url
    assert_response :success
  end

end
