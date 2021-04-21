def sign_up(username, password)
  visit root_path
  click_link "Login/Sign-up"
  click_link "Sign up"
  fill_in "Email", with: username
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password
  click_button("Sign up")
end
