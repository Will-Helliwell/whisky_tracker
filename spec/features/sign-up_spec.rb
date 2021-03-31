require 'rails_helper'

RSpec.describe "FEATURE - sign-up" do
  it "allows a new user to sign-up" do
    visit root_path
    click_link "Sign-up"
    fill_in "Username", with: "Johnno"
    fill_in "First name", with: "John"
    fill_in "Surname", with: "Smith"
    fill_in "Email", with: "johnsmith@example.com"
    fill_in "Password", with: "iloveruby"
    click_button("Create Account")
    expect(page).to have_text("Welcome John!")
  end
end
