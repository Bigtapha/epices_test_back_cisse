require 'test_helper'

class EnergyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get energy_index_url
    assert_response :success
  end

  test "should get import" do
    get energy_import_url
    assert_response :success
  end

end
