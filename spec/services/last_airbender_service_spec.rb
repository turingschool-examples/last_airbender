require 'rails_helper'

RSpec.describe LastAirbenderService do
  describe 'characters by nation' do
    it 'can get data characters and attributes' do
      nation = 'Fire+Nation'
      page = 1
      service = LastAirbenderService.characters(nation, page)

      expect(service).to be_an(Array)
      expect(service.count).to eq(20)
      expect(service.first).to be_a(Hash)
      expect(service.first).to have_key(:_id)
      expect(service.first).to have_key(:allies)
      expect(service.first).to have_key(:enemies)
      expect(service.first).to have_key(:name)
      expect(service.first).to have_key(:affiliation)
      expect(service[1]).to have_key(:photoUrl)
    end
  end
end
