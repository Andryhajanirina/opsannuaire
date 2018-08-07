require 'test_helper'

class AnnuaireControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get annuaire_index_url
    assert_response :success
  end

  test "should get new" do
    get annuaire_new_url
    assert_response :success
  end

  test "should get create" do
    get annuaire_create_url
    assert_response :success
  end

  test "should get show" do
    get annuaire_show_url
    assert_response :success
  end

end
