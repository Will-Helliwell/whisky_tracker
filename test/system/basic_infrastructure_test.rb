# frozen_string_literal: true

require 'application_system_test_case'

class BasicInfrastructureTest < ApplicationSystemTestCase
  test 'User can visit homepage' do
    visit root_path
    assert_text 'Welcome to Whisky Tracker'
  end
end
