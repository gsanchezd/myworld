require 'test_helper'

class CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get company_show_url
    assert_response :success
  end

end
