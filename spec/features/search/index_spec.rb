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
        within('#allies') do
          expect(page).to have_content('Ozai')
        end
        within('#enemies') do
          expect(page).to have_content('Earth Kingdom')
        end
        expect(page).to have_content('Affiliation: Fire Nation Navy')
      end

      within('#5cf5679a915ecad153ab691c') do
        expect(page).to have_content('Elua')
        within('#allies') do
          expect(page).to have_content('Ozai')
        end
        within('#enemies') do
          expect(page).to have_content('None')
        end
        expect(page).to have_content('Affiliation: Fire Nation Fire Nation Royal Family')
      end

      within('#5cf5679a915ecad153ab68da') do
        expect(page).to have_content('Azula')
        within('#allies') do
          expect(page).to have_content('Ozai')
          expect(page).to have_content('Zuko')
        end
        within('#enemies') do
          expect(page).to have_content('Iroh')
          expect(page).to have_content('Zuko')
          expect(page).to have_content('Kuei')
          expect(page).to have_content('Long Feng')
          expect(page).to have_content('Mai')
          expect(page).to have_content('Ty Lee')
          expect(page).to have_content('Ursa')
        end
        expect(page).to have_content("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
      end
    end
  end
end
