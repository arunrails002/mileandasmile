require 'test_helper'

class MileServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mile_service = mile_services(:one)
  end

  test "should get index" do
    get mile_services_url
    assert_response :success
  end

  test "should get new" do
    get new_mile_service_url
    assert_response :success
  end

  test "should create mile_service" do
    assert_difference('MileService.count') do
      post mile_services_url, params: { mile_service: { description: @mile_service.description, image: @mile_service.image, name: @mile_service.name } }
    end

    assert_redirected_to mile_service_url(MileService.last)
  end

  test "should show mile_service" do
    get mile_service_url(@mile_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_mile_service_url(@mile_service)
    assert_response :success
  end

  test "should update mile_service" do
    patch mile_service_url(@mile_service), params: { mile_service: { description: @mile_service.description, image: @mile_service.image, name: @mile_service.name } }
    assert_redirected_to mile_service_url(@mile_service)
  end

  test "should destroy mile_service" do
    assert_difference('MileService.count', -1) do
      delete mile_service_url(@mile_service)
    end

    assert_redirected_to mile_services_url
  end
end
