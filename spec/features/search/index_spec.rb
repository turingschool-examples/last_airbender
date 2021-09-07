require 'rails_helper'

RSpec.describe 'the search index' do
  describe 'display' do
    it 'shows list of fire nation members and total count' do
      visit root_path

      select 'Fire Nation', from: :nation

      click_button 'Search For Members'

      within('#header') do
        expect(page).to have_content('Fire Nation')
        expect(page).to have_content('Total Members: 97')
      end

      within('#5cf5679a915ecad153ab68fd') do
        expect(page).to have_content('Chan')
        expect(page).to have_content('Ozai')
        expect(page).to have_content('Earth Kingdom')
        expect(page).to have_content('Affiliation: Fire Nation Navy')
      end

      within('#5cf5679a915ecad153ab691c') do
        expect(page).to have_content('Elua')
        expect(page).to have_content('Ozai')
        expect(page).to have_content('None')
        expect(page).to have_content('Affiliation: Fire Nation Fire Nation Royal Family')
      end

      within('#5cf5679a915ecad153ab692a') do
        expect(page).to have_content('Fire Nation train conductor')
        expect(page).to have_content('Aang')
        expect(page).to have_content('Combustion Man')
        expect(page).to have_content('Affiliation: Fire Nation Fire Nation train')
      end
    end
  end
end
