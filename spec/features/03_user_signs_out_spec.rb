require 'spec_helper'

feature 'user signs out', %Q{
  As a user
  I want to sign out
} do

  scenario 'an existing user specifies a valid email and password' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Log in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Sign in'
    click_link 'Log out'

    expect(page).to have_content("Signed out successfully.")
    expect(page).to have_content("Sign up")
    expect(page).to have_content("Log in")
  end
end
