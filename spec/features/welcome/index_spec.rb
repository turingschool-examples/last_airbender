require 'rails_helper'

RSpec.describe 'Welcome Controller' do
  describe 'landing page' do
    it 'has a search bar to search with' do
      visit root_path
      expect(page).to have_content("The Four Nations")
      
      select "Fire Nation", from: :nation
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
    end
  end
end
