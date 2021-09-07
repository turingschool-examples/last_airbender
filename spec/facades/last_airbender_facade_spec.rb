require 'rails_helper'

RSpec.describe LastAirbenderFacade do
  describe 'characters by nation' do
    it 'can get total characters in nation' do
      nation = 'Fire+Nation'
      pages = 5
      facade = LastAirbenderFacade.total_characters(nation)

      expect(facade.count).to eq(97)
    end

    it 'can get first 25 characters by nation' do
      nation = 'Fire+Nation'
      facade = LastAirbenderFacade.total_characters(nation)

      expect(facade[0..24].count).to eq(25)
    end
  end
end
