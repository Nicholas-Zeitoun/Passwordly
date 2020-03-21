require 'test_helper'

class KeysControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get keys_controller_index_url
    assert_response :success
  end

end
