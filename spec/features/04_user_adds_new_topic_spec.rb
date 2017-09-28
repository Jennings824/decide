require "rails_helper"

feature "add topic", %Q{
  As an unauthenticated user
  I want to add a new topic
  So that I can contribute an opinion
} do

  scenario "specifying valid and required information" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Log in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Sign in'
    visit topics_path
    click_link "Add New Topic"
    fill_in "Title", with: "Interview with Steve"
    fill_in "Add what you'd like feedback on", with: "This interview will take place at 11"
  click_button "Add Topic"
    expect(page).to have_content("Topic added successfully")
  end
  scenario "missing title, criteria" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link "Log in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Sign in'
    visit topics_path
    click_link "Add New Topic"
    click_button "Add Topic"
    expect(page).to have_content("Create a New Topic!")

  end
end
