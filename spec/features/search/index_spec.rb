require 'rails_helper'

RSpec.describe 'Search' do
  describe 'viewing of api' do
    it 'can display the number of people from the fire nation' do
      visit '/'

      select "Fire Nation"

      click_on "Search For Members"

      expect(current_path).to eq(search_path)
    end
  end
end
