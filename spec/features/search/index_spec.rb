require 'rails_helper'

RSpec.describe 'search index' do
  it 'routes to search index from root path' do
    visit root_path

    select('Fire Nation', from: :nation)
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end

  xit 'displays the total number of people who live in the Fire Nation' do
    visit search_path

    expect(page).to have_content('111 people live in the Fire Nation')
  end
end
