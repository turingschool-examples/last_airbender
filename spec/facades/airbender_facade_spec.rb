require 'rails_helper'

RSpec.describe 'AirbenderFacade' do
  describe 'class methods' do
    describe '::get_members' do
      it 'returns all members related to nation' do
        movies = AirbenderFacade.get_members("Fire Nation")

        expect(movies).to be_a(Array)
        expect(movies.count).to eq(5)
        expect(movies.first.name).to eq("Chan (Fire Nation admiral)")
      end
    end

  end
end
