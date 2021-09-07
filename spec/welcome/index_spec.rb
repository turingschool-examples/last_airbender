require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it 'can select nation and send request' do
    visit root_path

    select 'Fire Nation', from: 'nation'

    click_button('Search For Members')

    expect(current_path).to eq(search_path)
  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
