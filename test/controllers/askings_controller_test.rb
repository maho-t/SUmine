require 'test_helper'

class AskingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get askings_index_url
    assert_response :success
  end

end
