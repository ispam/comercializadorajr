require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get quienes" do
    get :quienes
    assert_response :success
  end

  test "should get contactenos" do
    get :contactenos
    assert_response :success
  end

end
