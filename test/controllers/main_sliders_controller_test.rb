require 'test_helper'

class MainSlidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_slider = main_sliders(:one)
  end

  test "should get index" do
    get main_sliders_url
    assert_response :success
  end

  test "should get new" do
    get new_main_slider_url
    assert_response :success
  end

  test "should create main_slider" do
    assert_difference('MainSlider.count') do
      post main_sliders_url, params: { main_slider: { name: @main_slider.name } }
    end

    assert_redirected_to main_slider_url(MainSlider.last)
  end

  test "should show main_slider" do
    get main_slider_url(@main_slider)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_slider_url(@main_slider)
    assert_response :success
  end

  test "should update main_slider" do
    patch main_slider_url(@main_slider), params: { main_slider: { name: @main_slider.name } }
    assert_redirected_to main_slider_url(@main_slider)
  end

  test "should destroy main_slider" do
    assert_difference('MainSlider.count', -1) do
      delete main_slider_url(@main_slider)
    end

    assert_redirected_to main_sliders_url
  end
end
