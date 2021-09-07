require 'rails_helper'

RSpec.describe 'character search' do
  before :each do
    @search_critieria = 'FIRE+NATION'

    @character_blob = File.read('./spec/fixtures/fire_nation_response.json')
    @character_request = stub_request(:get, "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{@search_criteria}").
      to_return(status: 200, body: @character_blob)
    allow(AvatarService).to receive(:render_request).and_return(@character_request.response)
  end
  # As a user,
  # When I visit "/"
  # And I Select "Fire Nation" from the select field
  # (Note: Use the existing select field)
  # And I click "Search For Members"
  # Then I should be on page "/search"
  # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
  # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
  #
  # And for each of the members I should see:
  # - The name of the member (and their photo, if they have one)
  # - The list of allies or "None"
  # - The list of enemies or "None"
  # - Any affiliations that the member has
  it 'allows a user to search for characters by nation' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_on 'Search For Members'

    expect(current_path).to eq search_path

    # characters = AvatarService.character_count
    # expect(page).to have_content("#{characters} total characters")

    expect(page).to have_css('#character', count: 25)
    # save_and_open_page
    within(first('#character')) do
      expect(page).to have_css('#name')
      expect(page).to have_css('#photo')
      expect(page).to have_css('#allies')
      expect(page).to have_css('#enemies')
      expect(page).to have_css('#affiliation')
    end
  end

end
