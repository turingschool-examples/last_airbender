require 'rails_helper'

describe 'search' do
  it 'can grab information and redirect properly' do
    visit root_path

    select 'Fire Nation', from: "nation"
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
  end

  it 'displays characters' do
    visit root_path

    select 'Fire Nation', from: "nation"
    click_on 'Search For Members'

    expect(page).to have_content("Zuko")
    expect(page).to have_content("Iroh")
    expect(page).to have_content("ship captain")
    expect(page).to have_content("Dai Li")

    expect(page).to have_content("Enemies")
    expect(page).to have_content("Allies")
    expect(page).to have_content("Affiliation")
  end
end
