require 'rails_helper'

RSpec.describe 'The search index page' do
  before :each do
    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'
  end

  it 'displays the total number of people who live in the selected nation' do
    expect(current_path).to eq(search_path)
    expect(page).to have_content('Total number of Fire Nation members: 97')
  end

  it 'displays the first 25 members of the selected nation' do
    within '#25-members' do
      expect(page).to have_css("li", count: 25)
    end
  end

  it 'displays details about each member' do
    within '#25-members' do
      within '#member-Chan (Fire Nation admiral)' do
        expect(page).to have_content("Name: Chan (Fire Nation admiral)")
        expect(page).to have_content("Allies: Ozai")
        expect(page).to have_content("Enemies: Earth Kingdom")
        expect(page).to have_content("Affiliations: ")
      end
    end
  end
end
