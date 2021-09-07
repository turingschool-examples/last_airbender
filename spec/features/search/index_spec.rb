require 'rails_helper'

describe 'Search Page' do
  it 'can redirect to Fire Nation Search page after selecting' do
    visit root_path

    select 'Fire Nation', :from => :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end
  it 'shows count of fire nation members' do
    visit root_path
    select 'Fire Nation', :from => :nation
    click_button 'Search For Members'

    expect(page).to have_content('Total Number of People: 97')
  end
  it 'lists the first 25 members and attributes' do
    visit root_path
    select 'Fire Nation', :from => :nation
    click_button 'Search For Members'

    expect(page).to have_content('Name:')
    expect(page).to have_content('Allies:')
    expect(page).to have_content('Enemies:')
    expect(page).to have_content('Affiliation:')
  end
end
