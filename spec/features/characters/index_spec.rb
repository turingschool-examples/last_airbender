require 'rails_helper'

RSpec.describe 'Character Index Page' do

  it 'displays all the cahracters of a given nation and their attributes' do
    visit root_path

    select 'Fire Nation', :from => 'nation'
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    within "#character" do
      expect(page).to have_content("Circus master")
      expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819']")
      expect(page).to have_content("Ty Lee")
      expect(page).to have_content("Appa")
      expect(page).to have_content("Fire Nation circus")
    end
  end
end
