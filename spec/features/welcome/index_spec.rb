require 'rails_helper'

describe 'welcome index page' do
  describe 'as a user' do
    context 'when I visit "/"' do
      before { visit root_path }

      context 'and I select "Fire Nation" from the select field and I click "Search For Members"' do
        let(:nation) { 'Fire Nation' }
        let(:total_number) { 20 }

        before do
          select nation, from: :nation
          click_button 'Search For Members'
        end

        it 'redirects me to the "/search" page' do
          expect(current_path).to eq('/search')
        end

        it 'displays the total number of people who live in the Fire Nation' do
          expect(page).to have_content("Total Number of #{nation} Members: #{total_number}")
        end

        it 'lists up to the first 25 members of the Fire Nation' do
          expect(page).to have_content('Members of the Fire Nation')
        end

        xit 'displays the details of each member' do
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
