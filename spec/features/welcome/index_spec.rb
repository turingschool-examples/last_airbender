require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  it 'renders form to search members by nation' do
    visit root_path

    select 'Fire Nation', :from => 'nation'

    click_on "Search For Members"

    expect(current_path).to eq(search_path)
  end
end
