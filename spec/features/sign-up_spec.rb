require 'rails_helper'

RSpec.describe "FEATURE - sign-up" do
  it "allows a new user to sign-up" do
    visit root_path
    click_link "Login/Sign-up"
    click_link "Sign up"
    fill_in "Email", with: "user-1@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button("Sign up")
    expect(page).to have_text("Welcome user-1@email.com!")
  end
end

RSpec.describe "FEATURE - log-in" do
  xit "allows an existing user to sign-in" do
    visit root_path
    click_link "Login/Sign-up"
    fill_in "Email", with: "user-1@email.com"
    fill_in "Password", with: "password"
    click_button("Log in")
    expect(page).to have_text("Welcome user-1@email.com!")
  end
end
