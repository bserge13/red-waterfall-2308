require 'rails_helper'

RSpec.describe 'user searches for characters' do 
  it 'returns all characters of a specified nation', :vcr do 
    # As a user,
    # When I visit "/"
    visit '/'
    # save_and_open_page
    # And I Select "Fire Nation" from the select field
    # (Note: Use the existing select field)
    select "Fire Nation", from: :nation
    # And I click "Search For Members"
    click_on "Search For Members"
    # Then I should be on page "/search"
    expect(current_path).to eq(search_path)
    # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
    expect(page).to have_css(".member", count: 97)
    # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".enemies")
      expect(page).to have_css(".affiliation")
    end
    # And for each of the members I should see:
    # - The name of the member (and their photo, if they have one)
    # - The list of allies or "None"
    # - The list of enemies or "None"
    # - Any affiliations that the member has
    save_and_open_page
  end
end