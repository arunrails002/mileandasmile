require 'test_helper'

class BoardingFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boarding_form = boarding_forms(:one)
  end

  test "should get index" do
    get boarding_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_boarding_form_url
    assert_response :success
  end

  test "should create boarding_form" do
    assert_difference('BoardingForm.count') do
      post boarding_forms_url, params: { boarding_form: { email: @boarding_form.email, mobile: @boarding_form.mobile, numberofnights: @boarding_form.numberofnights, services: @boarding_form.services, spot: @boarding_form.spot, traveldate: @boarding_form.traveldate, type: @boarding_form.type } }
    end

    assert_redirected_to boarding_form_url(BoardingForm.last)
  end

  test "should show boarding_form" do
    get boarding_form_url(@boarding_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_boarding_form_url(@boarding_form)
    assert_response :success
  end

  test "should update boarding_form" do
    patch boarding_form_url(@boarding_form), params: { boarding_form: { email: @boarding_form.email, mobile: @boarding_form.mobile, numberofnights: @boarding_form.numberofnights, services: @boarding_form.services, spot: @boarding_form.spot, traveldate: @boarding_form.traveldate, type: @boarding_form.type } }
    assert_redirected_to boarding_form_url(@boarding_form)
  end

  test "should destroy boarding_form" do
    assert_difference('BoardingForm.count', -1) do
      delete boarding_form_url(@boarding_form)
    end

    assert_redirected_to boarding_forms_url
  end
end
