require 'rails_helper'

 RSpec.describe LastAirbenderService do
   it 'can make a connection to external service' do
     expect(LastAirbenderService.conn('https://last-airbender-api.herokuapp.com/api/v1')).to be_an_instance_of(Faraday::Connection)
   end

   it 'can get nation information' do
     json_response = File.read('spec/fixtures/characters.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation").
    with(
      headers: {
     'Accept'=>'*/*',
     'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
     'User-Agent'=>'Faraday v1.7.1'
      }).
    to_return(status: 200, body: json_response, headers: {})

     search = 'Fire Nation'
     json = LastAirbenderService.get_affiliations(search)

     expect(json.count).to eq(20)

     expect(json).to be_a(Array)
     json.each do |member|
       expect(member).to have_key(:allies)
       expect(member).to have_key(:enemies)
       expect(member).to have_key(:name)
       expect(member).to have_key(:affiliation)
     end
   end

   it 'can combine pages to get all members of a nation' do
     json_response = File.read('spec/fixtures/characters.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation").
    with(
      headers: {
     'Accept'=>'*/*',
     'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
     'User-Agent'=>'Faraday v1.7.1'
      }).
    to_return(status: 200, body: json_response, headers: {})
   end
 end
