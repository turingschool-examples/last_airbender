require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it 'can display information about selected nation' do
    visit root_path

    select 'Fire Nation', from: 'nation'

    click_button('Search For Members')

    expect(current_path).to eq(search_path)
    expect(page).to have_content('fire nation')
    expect(page).to have_content('Chan')
    expect(page).to have_content('Ozai')
    expect(page).to have_content('Earth Kingdom')
    expect(page).to have_content('Fire Nation Navy')
  end
end

# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
