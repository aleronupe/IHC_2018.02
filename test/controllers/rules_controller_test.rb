require 'test_helper'

class RulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rules_index_url
    assert_response :success
  end

  test "should get trending" do
    get rules_trending_url
    assert_response :success
  end

end
