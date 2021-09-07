require 'rails_helper'

describe 'welcome index page' do
  describe 'as a user' do
    context 'when I visit "/"' do
      before { visit root_path }

      context 'and I select "Fire Nation" from the select field and I click "Search For Members"' do
        let(:nation) { 'Fire Nation' }
        let(:total_number) { 97 }


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

        it 'displays the details of each member' do
          fire_nation_members = AirbenderFacade.nation_members('fire_nation')[0..24]

          expect(fire_nation_members.size).to eq(25)

          fire_nation_members[0..24].each do |member|
            within "#member-#{member.id}" do
              expect(page).to have_content(member.name)

              if member.allies.empty?
                expect(page).to have_content('None')
              else
                expect(page).to have_content(member.allies.join(', ').strip)
              end

              if member.enemies.empty?
                expect(page).to have_content('None')
              else
                expect(page).to have_content(member.enemies.join(', ').strip)
              end

              expect(page).to have_content(member.affiliation)
            end
          end
        end
      end
    end
  end
end
