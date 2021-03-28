# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'FEATURE - Basic Infrastructure' do
  it 'allows a user to visit the homepage' do
    visit root_path
    expect(page).to have_text('Welcome to Whisky Tracker')
  end
  xit 'allows React components to render on the homepage' do
    visit root_path
    expect(page).to have_text('Hello React!')
  end
end
