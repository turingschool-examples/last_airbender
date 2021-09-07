require 'rails_helper'

RSpec.describe 'the search index' do
  describe 'display' do
    it 'shows list of fire nation members' do
      visit root_path

      select 'Fire Nation', from: :nation

      click_button 'Search For Members'

    end
  end
end
