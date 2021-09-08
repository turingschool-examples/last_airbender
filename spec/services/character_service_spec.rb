require 'rails_helper'

RSpec.describe CharacterService do
  before :each do
  end

  describe 'instance methods' do
    describe '#affiliation' do
      it 'can get a response' do
        service = CharacterService.affiliation('Fire Nation')

        expect(service.class).to eq(Array)
        expect(service[1].class).to eq(Hash)
        expect(service[1]).to have_key(:enemies)
        expect(service[1]).to have_key(:name)
        expect(service[1]).to have_key(:allies)
        expect(service[1]).to have_key(:affiliation)
        expect(service[1]).to have_key(:photoUrl)
      end
    end
  end
end