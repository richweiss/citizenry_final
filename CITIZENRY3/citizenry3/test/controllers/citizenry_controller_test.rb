require 'test_helper'

class CitizenryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citizenry_index_url
    assert_response :success
  end

end
