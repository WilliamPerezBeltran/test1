# frozen_string_literal: true

require 'test_helper'

class EfimeridesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @efimeride = efimerides(:one)
  end

  test 'should get index' do
    get efimerides_url
    assert_response :success
  end

  test 'should get new' do
    get new_efimeride_url
    assert_response :success
  end

  test 'should create efimeride' do
    assert_difference('Efimeride.count') do
      post efimerides_url, params: { efimeride: { category_id: @efimeride.category_id, date: @efimeride.date, text: @efimeride.text } }
    end

    assert_redirected_to efimeride_url(Efimeride.last)
  end

  test 'should show efimeride' do
    get efimeride_url(@efimeride)
    assert_response :success
  end

  test 'should get edit' do
    get edit_efimeride_url(@efimeride)
    assert_response :success
  end

  test 'should update efimeride' do
    patch efimeride_url(@efimeride), params: { efimeride: { category_id: @efimeride.category_id, date: @efimeride.date, text: @efimeride.text } }
    assert_redirected_to efimeride_url(@efimeride)
  end

  test 'should destroy efimeride' do
    assert_difference('Efimeride.count', -1) do
      delete efimeride_url(@efimeride)
    end

    assert_redirected_to efimerides_url
  end
end
