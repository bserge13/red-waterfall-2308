require 'rails_helper'

RSpec.describe 'user searches for characters' do 
  it 'returns all characters of a specified nation', :vcr do 
    visit '/'

    select "Fire Nation", from: :nation
    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content('Fire Nation')
    expect(page).to have_content("Total Members: 97")
    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".enemies")
      expect(page).to have_css(".affiliation")
      expect(page).to have_css(".photo")
    end
    
    expect(page).to have_content('Name:').exactly(25).times
    expect(page).to have_content('Allies:').exactly(25).times
    expect(page).to have_content('Enemies:').exactly(25).times
    expect(page).to have_content('Affiliation:').exactly(25).times
    
    expect(page).to have_content('Name: Fire Navy officer')
    expect(page).to have_content('Allies: ["Admiral"]')
    expect(page).to have_content('Affiliation: Fire Nation Navy')
    expect(page).to have_content('Enemies: None')
  end
end