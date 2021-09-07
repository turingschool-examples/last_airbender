require 'rails_helper'

RSpec.describe 'Character Index Page' do

  it 'displays all the cahracters of a given nation and their attributes' do
    visit root_path

    select 'Fire Nation', :from => 'nation'
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    within "#{character.id}" do
      expect(page).to have_content(character.name)
      expect(page).to have_content(character.photo)
      expect(page).to have_content(character.allies)
      expect(page).to have_content(character.enemies)
      expect(page).to have_content(character.affiliation)
    end
  end
end
