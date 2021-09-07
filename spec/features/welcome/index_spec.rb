require 'rails_helper'

describe 'welcome index page' do
  describe 'as a user' do
    context 'when I visit "/"' do
      before { visit root_path }

      context 'and I select "Fire Nation" from the select field and I click "Search For Members"' do
        before do
          select 'Fire Nation', from: :nation
          click_button 'Search For Members'
        end

        it 'redirects me to the "/search" page' do
          expect(page).to have_current_path('/search')
        end

        it 'displays the total number of people who live in the Fire Nation' do
          total_number = 100 # or so
          expect(page).to have_content("Total Number of People in the Fire Nation: #{total_number}")
        end

        it 'lists the first 25 members of the Fire Nation' do
          expect(page).to have_content('First 25 Members of the Fire Nation')
        end

        it 'displays the details of each member' do
          members.each do |member|
            expect(page).to have_content(member.name)
            expect(page).to have_content(member.allies) # or "None"
            expect(page).to have_content(member.enemies) # or "None"
            expect(page).to have_content(member.affiliations)
          end
        end
      end
    end
  end
end
