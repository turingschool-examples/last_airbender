require 'rails_helper'

# As a user,
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

RSpec.describe 'Members Search' do
  describe 'happy path' do
    it 'allows user to search for members by affiliation' do
      visit root_path

      select "Water Tribe", from: :nation
      click_button 'Search For Members'

      expect(page.status_code).to eq 200
      expect(current_path).to eq(search_path)
      expect(page).to have_content('Total number of members in Nation: ')
      expect(page).to have_content(1)
      expect(page).to have_content("Kya")
    end

    it 'allows user to search for members by another affiliation' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      expect(page.status_code).to eq 200
      expect(current_path).to eq(search_path)
      expect(page).to have_content('Total number of members in Nation:')
      expect(page).to have_content(20)
    end
  end
end
