require 'rails_helper'

RSpec.describe 'Search' do
  before(:each) do
    visit('/search?nation=earth_kingdom')
  end

  it 'displays total number of citizens' do
    expect(page).to have_content('Total People: 76')
  end

  it 'displaysinformation for first 25 members' do

  end
end
