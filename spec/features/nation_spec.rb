require 'rails_helper'

RSpec.describe 'Find Nations', type: :feature do

  describe 'When I select Fire Nation from form' do
    it 'I see a total of members', :vcr do

      visit root_path
      
      select 'Fire Nation', from: :nation

      click_on 'Search For Members'

      expect(current_path).to eq(search_index_path)

      expect(page).to have_content('Total Members: 97')

      within(first('#nation')) do 
        expect(page).to have_css('.name')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.enemies')
        # expect(page).to have_css('.photo')
        expect(page).to have_css('.affiliation')
      end

      # expect(page).to have_content('Andrew Johnson National Historic Site')
    end
  end
end