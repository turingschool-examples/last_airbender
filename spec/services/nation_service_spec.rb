require 'rails_helper'

describe NationService do
  describe '#nation members' do
    it 'returns all members of a nation' do #first 25 members
      VCR.use_cassette('nation search') do # did VCR before i saw it wasn't required...
        response = NationService.nation_search('Fire Nation', 97, 1)

        expect(response).to be_an(Array)
        expect(response.first).to be_a(Hash)
        expect(response.count).to eq(97)
        expect(response.first).to have_key(:allies)
        expect(response.first).to have_key(:affiliation)
      end
    end
  end
end

# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
