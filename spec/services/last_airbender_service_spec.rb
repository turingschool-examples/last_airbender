require 'rails_helper'

RSpec.describe LastAirbenderService do

  it 'can make a connection to external service' do
    expect(LastAirbenderService.conn('https://last-airbender-api.herokuapp.com/api/v1')).to be_an_instance_of(Faraday::Connection)
  end

  it 'can get nation information' do
    VCR.use_cassette('characters') do
      search = 'Fire Nation'
      page = 1
      json = LastAirbenderService.get_affiliations(search)

      expect(json.count).to eq(97)
      expect(json).to be_a(Array)
      json.each do |member|
        expect(member).to have_key(:allies)
        expect(member).to have_key(:enemies)
        expect(member).to have_key(:name)
        expect(member).to have_key(:affiliation)
      end
    end
  end
end
  # it 'can combine pages to get all members of a nation' do
  #   VCR.use_cassette('all_characters') do
  #     search = 'Fire Nation'
  #     json = LastAirbenderService.get_all_affiliations(search)
  #
  #     expect(json.count).to eq(97)
  #   end
  # end
