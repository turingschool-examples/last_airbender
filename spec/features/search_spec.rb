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

      # fill_in :search, with: 'Fire Nation'
      # choose :nation, with: 'Fire Nation'
      choose :nation, with: 'Fire Nation'
      click_button 'Search For Members'

      expect(path).to search_path
      expect(page.status_code).to eq 200
      expect(page).to have_content('Total number of members in Nation:')
      expect(page).to have_content("Chan (Fire Nation admiral)")
    end

    xit 'allows user to search for members by another affiliation' do
      visit root_path

      choose :nation, with: 'Water Tribe'
      click_button 'Search For Members'

      expect(path).to search_path
      expect(page.status_code).to eq 200
      expect(page).to have_content('Total number of members in Nation:')
      expect(page).to have_content("Amon")
    end
  end
end
