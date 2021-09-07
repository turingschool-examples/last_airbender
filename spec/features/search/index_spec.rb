require 'rails_helper'

RSpec.describe 'Search' do
  describe 'viewing of api' do
    it 'can display the number of people from the fire nation' do
      visit '/'

      select "Fire Nation"

      click_on "Search For Members"

      expect(current_path).to eq(search_path)
      expect(current_path).to have_content("Total Number of People:")
    end
  end

  #continue to test for view features such as 'empty' or 'none'
  #display all attributes
end
