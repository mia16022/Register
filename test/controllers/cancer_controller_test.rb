require 'test_helper'

class CancerControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get cancer_top_url
    assert_response :success
  end

end
