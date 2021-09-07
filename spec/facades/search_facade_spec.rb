require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'class methods' do
    describe '::chars_from_fire_nation' do
      it 'returns an array of all characters for fire nation' do
        result = SearchFacade.chars_from_fire_nation

        expect(result).to be_a(Array)
        expect(result.count).to eq(111)
        expect(result.first).to be_an_instance_of(Character)
      end
    end

    describe '::twenty_five_in_detail' do
      it 'returns an array of 25 characters and their details are available' do
        result = SearchFacade.twenty_five_in_detail

        expect(result).to be_a(Array)
        expect(result.count).to eq(25)
        expect(result.first).to be_an_instance_of(Character)
        expect(result.first.name).to eq("Bolin")
      end
    end
  end
end
