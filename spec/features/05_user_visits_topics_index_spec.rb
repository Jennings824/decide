# require 'rails_helper'
#
# feature "user visits topic index" do
#   scenario "user visits the index page" do
#     user = FactoryGirl.create(:user)
#     visit root_path
#     click_link "Log in"
#     fill_in "Email", with: user.email
#     fill_in "Password", with: user.password
#     click_button 'Sign in'
#     visit topics_path
#     click_link "Add New Topic"
#     fill_in "Title", with: "Interview with Steve"
#     fill_in "Add what you'd like feedback on", with: "This interview will take place at 11"
#     click_button "Add Topic"
#     # click_link "Home"
#     # expect(page).to have_current_path("/topics")
#     # expect(page).to have_content("Interview with Steve")
#     expect(page).to have_content("Topic added successfully")
#   end
# end
