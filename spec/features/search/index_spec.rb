require 'rails_helper'

RSpec.describe 'search index' do
  describe 'navigation' do
    it 'takes user to search_path through selection' do
      visit root_path
      select 'Fire Nation'
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
    end
  end

  describe 'search display' do
    before :each do
      visit root_path
      select 'Fire Nation'
      click_on 'Search For Members'
    end

    it 'displays total number of inhabitants' do
      expect(page).to have_content('Total Inhabitants: 97')
    end

    it 'displays first 25 inhabitants and information' do
      within('#first-25') do
        # h3 tags are only used for names
        expect(page).to have_css('h3', count: 25)
        # p tags are for supplementary information in sets of 3
        expect(page).to have_css('p', count: 75)
      end
    end
  end
end
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
