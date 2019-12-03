# frozen_string_literal: true

require 'application_system_test_case'

class EfimeridesTest < ApplicationSystemTestCase
  setup do
    @efimeride = efimerides(:one)
  end

  test 'visiting the index' do
    visit efimerides_url
    assert_selector 'h1', text: 'Efimerides'
  end

  test 'creating a Efimeride' do
    visit efimerides_url
    click_on 'New Efimeride'

    fill_in 'Category', with: @efimeride.category_id
    fill_in 'Date', with: @efimeride.date
    fill_in 'Text', with: @efimeride.text
    click_on 'Create Efimeride'

    assert_text 'Efimeride was successfully created'
    click_on 'Back'
  end

  test 'updating a Efimeride' do
    visit efimerides_url
    click_on 'Edit', match: :first

    fill_in 'Category', with: @efimeride.category_id
    fill_in 'Date', with: @efimeride.date
    fill_in 'Text', with: @efimeride.text
    click_on 'Update Efimeride'

    assert_text 'Efimeride was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Efimeride' do
    visit efimerides_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Efimeride was successfully destroyed'
  end
end
