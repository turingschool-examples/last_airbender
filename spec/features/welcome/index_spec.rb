require 'rails_helper'

RSpec.describe 'welcome index page' do
  it 'returns all the characters for a given nation' do
    visit root_path

    select 'Fire Nation', :from => 'nation'

    click_on 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Total Number of People: 20')

    # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
    expect(page).to have_css('div', :count => 20)

    # sad path for photo
    within '#character-id-5cf5679a915ecad153ab68fd' do
      expect(page).to have_content('Chan (Fire Nation admiral)')
      expect(page).to_not have_css('img src', :count => 1)
      expect(page).to have_content('Allies: Ozai')
      expect(page).to have_content('Enemies: Earth Kingdom')
      expect(page).to have_content('Affiliation: Fire Nation Navy')
    end

    # happy path for photo
    within '#character-id-5cf5679a915ecad153ab68cc' do
      expect(page).to have_content('Afiko')
      expect(page).to have_css('img src', :count => 1)
      expect(page).to have_content('Allies: Fire Nation')
      expect(page).to have_content('Enemies: Aang')
      expect(page).to have_content('Affiliation: Fire Nation')
    end
  end
end
