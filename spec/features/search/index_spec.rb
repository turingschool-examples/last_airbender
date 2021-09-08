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

    service_call = CharacterFacade.character_information("Fire Nation")

    expect(page).to have_content("Number of affiliates #{service_call.size}")
    expect(page).to have_content(service_call[1].name)
    expect(page).to have_content(service_call[1].allies[0])
    expect(page).to have_content(service_call[1].enemies[0])
    expect(page).to have_content(service_call[1].affiliation)
    expect(page).to have_css('img[src*="#{service_call[1].photo}"]')
  end
end