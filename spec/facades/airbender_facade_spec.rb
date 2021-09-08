require 'rails_helper'

RSpec.describe AirbenderFacade do
  describe '#members' do
    it 'can create ruby objects out of service response' do
      response = AirbenderFacade.members("Fire Nation")
      
      expect(response).to be_an(Array)
      expect(response.count).to eq(97)
      expect(response.first).to be_a(Member)
      expect(response.first.name).to eq('Chan (Fire Nation admiral)')
      expect(response.first.allies).to eq(['Ozai'])
      expect(response.first.enemies).to eq(['Earth Kingdom'])
      expect(response.first.affiliation).to eq('Fire Nation Navy')
    end
  end
end
