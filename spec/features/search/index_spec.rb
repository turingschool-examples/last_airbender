require 'rails_helper'

RSpec.describe 'Search Controller' do
  describe 'index' do
    it 'uses the params to search for nations' do
      visit '/'
      expect(page).to have_content("The Four Nations")
      select "Fire Nation", from: :nation
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content("Total Members of Fire Nation: 111")
    end
  end
end
