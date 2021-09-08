require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it 'it displays nation name' do
    visit root_path

    select 'Fire Nation', :from => 'nation'

    click_on "Search For Members"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Fire Nation")
    expect(page).to have_content("Chan (Fire Nation admiral)")
    expect(page).to have_content("Fire Nation bar patron's friend")
    expect(page).to have_content("25")
    expect(page).to_not have_content("26")
  end
end
