require 'rails_helper'

RSpec.describe 'Find Nations', type: :feature do

  describe 'When I select Fire Nation from form' do
    it 'I see a total of members', :vcr do

      visit root_path
      
      select 'Fire Nation', from: :nation

      click_on 'Search For Members'

      expect(current_path).to eq(search_index_path)

      expect(page).to have_content('Total Members: 100')

      # within(first('.parks')) do 
      #   expect(page).to have_css('.name')
      #   expect(page).to have_css('.description')
      #   expect(page).to have_css('.directions')
      #   expect(page).to have_css('.hours_of_op')
      # end

      # expect(page).to have_content('Andrew Johnson National Historic Site')
    end
  end
end