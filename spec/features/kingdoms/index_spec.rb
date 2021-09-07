require 'rails_helper'

RSpec.describe 'Kingdom Index Page' do
  it 'displays total number of members' do
    visit root_path

    select "Fire Nation", :from => 'nation'

    click_on "Search For Members"

    expect(current_path).to eq(kingdoms_search_path)

    expect(page).to have_content("Fire Nation")
  end
end

# Notes for instructor
# NOT my complete test. I'll go back and re-do once I'm able to figure out
# the correct direction to go in.
