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

    # And for each of the members I should see:
    within '#character-id-5cf5679a915ecad153ab68fd' do
      # - The name of the member (and their photo, if they have one)
      expect(page).to have_content('Chan (Fire Nation admiral)')
      # - The list of allies or "None"
      expect(page).to have_content('Allies: Ozai')
      # - The list of enemies or "None"
      expect(page).to have_content('Enemies: Earth Kingdom')
      # - Any affiliations that the member has  end
      expect(page).to have_content('Affiliation: Fire Nation Navy')
    end
  end
end
