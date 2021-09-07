require 'rails_helper'

describe 'search' do
  it 'can grab information and redirect properly' do
    visit root_path

    select 'Fire Nation', from: "nation"
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
  end
end
