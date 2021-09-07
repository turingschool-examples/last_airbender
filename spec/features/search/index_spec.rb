require 'rails_helper'

RSpec.describe 'Index' do
  before(:each) do
    visit('/search?nation=earth_kingdom')
  end

  it 'displays total number of citizens' do
    expect(page).to have_content('Total People: 76')
  end

  it 'displaysinformation for first 25 members' do
    expect(page).to have_content('Cabbage merchant')
    expect(page).to have_content('Affiliation: Cabbage Corp Earth Kingdom')
    within(:css, "#5cf5679a915ecad153ab68f7.allies") do
      expect(page).to have_content('Allies:')
      expect(page).to have_content('Cabbage Corp')
    end

    within(:css, '#5cf5679a915ecad153ab68f7.enemies') do
      expect(page).to have_content('Enemies:')
      expect(page).to have_content('The')
    end

    expect(page).to have_content('Gun')
    expect(page).to have_content('Affiliation: Earth Kingdom government')
    within(:css, "#5cf5679a915ecad153ab694f.allies") do
      expect(page).to have_content('Allies:')
      expect(page).to have_content('Earth Queen')
    end
    within(:css, '#5cf5679a915ecad153ab694f.enemies') do
      expect(page).to have_content('Enemies:')
      expect(page).to have_content('None')
    end
  end
end
