require 'rails_helper'

 RSpec.describe 'welcome page search' do
   before(:each) do
     json_response1 = File.read('spec/fixtures/characters.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=fire%20nation&page=1").
     with(
       headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Faraday v1.7.1'
       }).
     to_return(status: 200, body: json_response1, headers: {})

     json_response2 = File.read('spec/fixtures/page2.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=fire%20nation&page=2").
     with(
       headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Faraday v1.7.1'
       }).
     to_return(status: 200, body: json_response2, headers: {})

     json_response3 = File.read('spec/fixtures/page3.json')

     stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=fire%20nation&page=3").
       with(
         headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Faraday v1.7.1'
         }).
       to_return(status: 200, body: json_response3, headers: {})

       json_response4 = File.read('spec/fixtures/page4.json')

       stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=fire%20nation&page=4").
         with(
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v1.7.1'
           }).
         to_return(status: 200, body: json_response4, headers: {})

      json_response5 = File.read('spec/fixtures/page5.json')

      stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=fire%20nation&page=5").
           with(
             headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent'=>'Faraday v1.7.1'
             }).
           to_return(status: 200, body: json_response5, headers: {})

    json_response6 = File.read('spec/fixtures/page6.json')

    stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=fire%20nation&page=6").
                with(
                  headers: {
                 'Accept'=>'*/*',
                 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                 'User-Agent'=>'Faraday v1.7.1'
                  }).
                to_return(status: 200, body: json_response6, headers: {})

                json_response7 = File.read('spec/fixtures/characters.json')

                stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=1").
                with(
                  headers: {
                 'Accept'=>'*/*',
                 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                 'User-Agent'=>'Faraday v1.7.1'
                  }).
                to_return(status: 200, body: json_response7, headers: {})

                json_response8 = File.read('spec/fixtures/page2.json')

                stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=2").
                with(
                  headers: {
                 'Accept'=>'*/*',
                 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                 'User-Agent'=>'Faraday v1.7.1'
                  }).
                to_return(status: 200, body: json_response8, headers: {})

                json_response9 = File.read('spec/fixtures/page3.json')

                stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=3").
                  with(
                    headers: {
                   'Accept'=>'*/*',
                   'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                   'User-Agent'=>'Faraday v1.7.1'
                    }).
                  to_return(status: 200, body: json_response9, headers: {})

                  json_response10 = File.read('spec/fixtures/page4.json')

                  stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=4").
                    with(
                      headers: {
                     'Accept'=>'*/*',
                     'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                     'User-Agent'=>'Faraday v1.7.1'
                      }).
                    to_return(status: 200, body: json_response10, headers: {})

                 json_response11 = File.read('spec/fixtures/page5.json')

                 stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=5").
                      with(
                        headers: {
                       'Accept'=>'*/*',
                       'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                       'User-Agent'=>'Faraday v1.7.1'
                        }).
                      to_return(status: 200, body: json_response11, headers: {})

               json_response12 = File.read('spec/fixtures/page6.json')

        stub_request(:get, "https://last-airbender-api.herokuapp.com/characters?affiliation=Fire%20Nation&page=6").
                           with(
                             headers: {
                            'Accept'=>'*/*',
                            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                            'User-Agent'=>'Faraday v1.7.1'
                             }).
                           to_return(status: 200, body: json_response12, headers: {})
   end

   it 'user can select from existing field and search for members' do
     search = 'Fire Nation'
     members = MemberFacade.create_members(search)

     visit '/'

     page.select search, from: :nation
     click_on 'Search For Members'

     expect(current_path).to eq('/search')

     # expect(members.count).to eq(25)
     expect(page).to have_content(members.count)

     members.each do |member|
       expect(page).to have_content(member.name)
       expect(page).to have_content(member.affiliation)

       member.allies.each do |ally|
         expect(page).to have_content(ally)
       end

       member.enemies.each do |enemy|
         expect(page).to have_content(enemy)
       end
     end
   end
 end
#      As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

 # And for each of the members I should see:
 # - The name of the member (and their photo, if they have one)
 # - The list of allies or "None"
 # - The list of enemies or "None"
 # - Any affiliations that the member has
