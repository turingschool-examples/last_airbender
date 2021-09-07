require 'rails_helper'

RSpec.describe 'The search index page' do
  before :each do
    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'
  end

  it 'displays the total number of people who live in the selected nation' do
    expect(current_path).to eq(search_path)
    expect(page).to have_content('Total number of members: 97')
  end
end
