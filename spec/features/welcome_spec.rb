require 'rails_helper'

RSpec.describe 'welcome page' do
  before :each do
    visit root_path
  end
  # As a user,
  # When I visit "/"
  # And I Select "Fire Nation" from the select field
  # (Note: Use the existing select field)
  # And I click "Search For Members"
  # Then I should be on page "/search"
  # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
  # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#   And for each of the members I should see:
#   - The name of the member (and their photo, if they have one)
#   - The list of allies or "None"
#   - The list of enemies or "None"
#   - Any affiliations that the member has
  describe 'as a user when i visit /' do
    it 'has a search bar and can search for members of a given nation' do
      expect(page).to have_field(:nation)
      expect(page).to have_button('Search For Members')

      select 'Water Tribes', :from => "nation"
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
    end
  end
end
