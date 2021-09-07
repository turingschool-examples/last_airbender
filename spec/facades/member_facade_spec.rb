require 'rails_helper'

 RSpec.describe MemberFacade do
   before(:each) do
     json_response1 = File.read('spec/fixtures/characters.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=1").
     with(
       headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Faraday v1.7.1'
       }).
     to_return(status: 200, body: json_response1, headers: {})

     json_response2 = File.read('spec/fixtures/page2.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=2").
     with(
       headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Faraday v1.7.1'
       }).
     to_return(status: 200, body: json_response2, headers: {})

     json_response3 = File.read('spec/fixtures/page3.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=3").
       with(
         headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Faraday v1.7.1'
         }).
       to_return(status: 200, body: json_response3, headers: {})

       json_response4 = File.read('spec/fixtures/page4.json')

       stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=4").
         with(
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v1.7.1'
           }).
         to_return(status: 200, body: json_response4, headers: {})

      json_response5 = File.read('spec/fixtures/page5.json')

      stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=5").
           with(
             headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent'=>'Faraday v1.7.1'
             }).
           to_return(status: 200, body: json_response5, headers: {})

    json_response6 = File.read('spec/fixtures/page6.json')

    stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=6").
                with(
                  headers: {
                 'Accept'=>'*/*',
                 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                 'User-Agent'=>'Faraday v1.7.1'
                  }).
                to_return(status: 200, body: json_response6, headers: {})
   end

   it 'can count the number of affiliations of a nation' do
     search = 'Fire Nation'
     expect(MemberFacade.count_affiliations(search)).to eq(97)
   end

   it 'can count the number of affiliations of a nation' do
     search = 'Fire Nation'
     expect(MemberFacade.count_affiliations(search)).to eq(97)
   end
 end
