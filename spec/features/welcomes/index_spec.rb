require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe 'display' do
    it 'displays a select for fire nation' do
      visit root_path
      select 'Fire Nation'
      click_on 'Search For Members'
      expect(current_path).to eq('/search')
    end
  end
end
