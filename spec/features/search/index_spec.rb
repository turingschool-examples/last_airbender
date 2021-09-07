require 'rails_helper'

RSpec.describe 'Index' do
  before(:each) do
    visit('/search?nation=earth_kingdom')
  end

  it 'displays total number of citizens' do
    expect(page).to have_content('Total People: 76')
  end

  it 'displaysinformation for first 25 members' do
    within(:css, "#5cf5679a915ecad153ab68f7") do
      expect(page).to have_content('Cabbage merchant')
      expect(page).to have_content('Affiliation: Cabbage Corp Earth Kingdom')
      expect(page.find('.photo')['src']).to have_content("https://vignette.wikia.nocookie.net/avatar/images/2/2f/Cabbage_merchant.png/revision/latest?cb=20140112200908")
      within(:css, ".allies") do
        expect(page).to have_content('Allies:')
        expect(page).to have_content('Cabbage Corp')
      end

      within(:css, '.enemies') do
        expect(page).to have_content('Enemies:')
        expect(page).to have_content('The')
      end
    end

    within(:css, '#5cf5679a915ecad153ab694f') do
      expect(page).to have_content('Gun')
      expect(page).to have_content('Affiliation: Earth Kingdom government')
      within(:css, ".allies") do
        expect(page).to have_content('Allies:')
        expect(page).to have_content('Earth Queen')
      end
      within(:css, '.enemies') do
        expect(page).to have_content('Enemies:')
        expect(page).to have_content('None')
      end
    end
  end
end
