require "test_helper"

class Api::V1::VersionControllerTest < ActionDispatch::IntegrationTest
  test "version is 1.0.0" do
    get "/api/v1/version"
    assert_response :success
    assert_equal "1.0.0", JSON.parse(response.body)["version"]
  end
end
