require 'rails_helper'
RSpec.describe 'can go to a search page for a certain nation' do
  before :each do
    
  visit "/"
  end
  it 'can visit the index page' do
    select "Earth Kingdom", from: 'nation'
    click_button('Search For Members')

    expect(current_path).to eq('/search')
  end

  it 'can show the a list of charactes from a certain nation' do
    select "Fire Nation", from: 'nation'
    click_button('Search For Members')

    expect(page).to have_content("Azula")
  end
end