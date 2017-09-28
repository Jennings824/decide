require 'rails_helper'

feature "user visits topic show page" do
  xscenario "user visits the show page" do
    topic = create(:topic)
    visit "/topics/1"
    expect(page).to have_content("Interview with John")
    expect(page).to have_content("Location is 901 N Delaware Ave")
  end
