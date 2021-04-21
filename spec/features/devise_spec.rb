require 'rails_helper'
require_relative './devise_helper'

RSpec.describe "FEATURE - sign-up" do
  it "allows a new user to sign-up" do
    sign_up("user-1@email.com", "password")
    expect(page).to have_text("Welcome user-1@email.com!")
  end
end

RSpec.describe "FEATURE - logout" do
  it "allows a logged-in user to logout" do
    sign_up("user-1@email.com", "password")
    click_link "Logout"
    expect(page).to have_text("Please sign-in to view your whiskies")
  end
end
