require 'rails_helper'
#   As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"

# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)

# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
RSpec.describe 'People by nation index' do
  it 'returns a list of people who live in the Fire Nation' do
    visit root_path
    
    select "Fire Nation", :from => "nation"
    click_on 'Search For Members'

    expect(current_path).to eq '/search'
    expect(page).to have_content("Name: Chan (Fire Nation admiral)")
    expect(page).to have_content("Affiliation: Fire Nation Navy)")
  end

  it 'displays the total number of search results' do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_on 'Search For Members'

    expect(page).to have_content("Total results: 97")
  end

  it 'displays the first 25 members of the Fire Nation with details' do
    visit root_path

    select "Fire Nation", :from => "nation"
    click_on 'Search For Members'

    expect(page).to have_content("Name: ")
    expect(page).to have_content("Allies: ")
    expect(page).to have_content("Enemies: ")
    expect(page).to have_content("Affiliation: ")
    expect(page).to have_content("photo: ")
  end
end
