require 'spec_helper'

feature 'user sign in', %Q{
  As a user
  I want to sign in
  So I can add a Topic
} do

    scenario 'an existing user specifies a valid email and password' do
      user = FactoryGirl.create(:user)
      visit '/users/sign_in'
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button 'Sign in'

      expect(page).to have_content("Signed in successfully.")
      expect(page).to have_content("Log out")
    end

    scenario 'a nonexistent email and password is supplies' do
      visit root_path
      click_link "Log in"
      fill_in "Email", with: "IdontExist@gmail.com"
      fill_in "Password", with: "password"
      click_button 'Sign in'


      expect(page).to have_content("Log in")
    end

    scenario 'an existing email and wrong password is supplies and denies access' do
    visit root_path
    click_link "Log in"
    fill_in "Email", with: "junk@hotmail.com"
    fill_in "Password", with: "junknond"
    click_button 'Sign in'

      expect(page).to have_content("Log in")
  end

end
