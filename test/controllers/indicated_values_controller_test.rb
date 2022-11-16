require 'test_helper'

class IndicatedValuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get indicated_values_index_url
    assert_response :success
  end

end
