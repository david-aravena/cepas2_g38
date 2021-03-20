require 'test_helper'

class CepasControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get cepas_update_url
    assert_response :success
  end

end
