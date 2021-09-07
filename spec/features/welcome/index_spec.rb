require 'rails_helper'

RSpec.describe 'The welcome index page' do
  it "redirects to the search page after 'Searching for Members' is clicked" do
    visit root_path

    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
  end
end
