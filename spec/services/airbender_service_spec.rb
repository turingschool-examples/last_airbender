require 'rails_helper'

RSpec.describe AirbenderService do
  describe '#member_search' do
    it 'can return a custom response based on user input' do
      response = AirbenderService.member_search("Fire Nation")

      expect(response).to be_an(Array)
      expect(response.count).to eq(97)
      expect(response.first).to be_a(Hash)
      expect(response.first[:name]).to eq("Chan (Fire Nation admiral)")
    end
  end
end
