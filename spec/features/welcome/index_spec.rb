require 'rails_helper'

  RSpec.describe 'welcome index' do
  describe 'select field' do
    before (:each) do
      visit "/"
      fill_in 'nation', with: 'fire_nation'
      click_on('commit')
    end
      #     As a user,
      # When I visit "/"
      # And I Select "Fire Nation" from the select field
      # (Note: Use the existing select field)
      # And I click "Search For Members"
      # Then I should be on page "/search"
      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
    it 'when making a selection, and submitting the search, the uri is now /search and the total number of people in the nation is shown' do
      expect(current_path).to eq('/search')
      expect(page).to have_content("total members: #{}")
    end
    # - The name of the member (and their photo, if they have one)
    # - The list of allies or "None"
    # - The list of enemies or "None"
    # - Any affiliations that the member has
    it 'has the detailed info from the first 25 people' do
      expect(page).to have_content()

    end
  end
end