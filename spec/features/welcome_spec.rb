require 'rails_helper'

RSpec.describe 'welcome page' do
  before :each do
    visit root_path
    @member1 = Member.new(data = {name: "Kuzon", allies: ["Aang", "Bumi"], enemies: ["Ozai"], affiliation: "Fire Nation"})
  end
  # As a user,
  # When I visit "/" x
  # And I Select "Fire Nation" from the select field x
  # (Note: Use the existing select field) x
  # And I click "Search For Members" x
  # Then I should be on page "/search" x
  # Then I should see the total number of people who live in the Fire Nation.
  # (should be close to 100) X
  # And I should see a list with the detailed information for the first 25 members
  # of the Fire Nation. X
#   And for each of the members I should see:
#   - The name of the member (and their photo, if they have one)
#   - The list of allies or "None" x
#   - The list of enemies or "None" x
#   - Any affiliations that the member has x
  describe 'as a user when i visit /' do
    it 'has a search bar and can search for members of a given nation' do
      expect(page).to have_field(:nation)
      expect(page).to have_button('Search For Members')

      select 'Fire Nation', :from => "nation"
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
    end

    it 'can display the total number of people who live in a given nation' do
      select 'Fire Nation', :from => "nation"
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
      # expect page to have member's name/allies/enemies/affiliation
      save_and_open_page
      expect(page).to have_content(@member1.name)
      expect(page).to have_content(@member1.allies)
      expect(page).to have_content(@member1.enemies)
      expect(page).to have_content(@member1.affiliation)
    end
  end
end
