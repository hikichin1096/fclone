require 'test_helper'

class FacclonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facclones_index_url
    assert_response :success
  end

end
