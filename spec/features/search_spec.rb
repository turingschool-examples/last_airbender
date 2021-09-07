require 'rails_helper'

 RSpec.describe 'welcome page search' do
   it 'user can select from existing field and search for members' do
     search = 'Fire Nation'
     members = MemberFacade.create_members(search)

     visit '/'

     page.select search, from: :nation
     click_on 'Search For Members'

     expect(current_path).to eq('/search')

     expect(members.count).to eq(25)
     expect(page).to have_content(members.count)

     first_member = members[0]

     expect(page).to have_content(first_member.name)
     expect(page).to have_content(first_member.affiliation)
     expect(page).to have_content(first_member.enemies[0])
     expect(page).to have_content(first_member.allies[0])
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
