require 'rails_helper'

RSpec.describe AirbenderService do
  describe 'class methods' do
    describe '::connection_setup' do
      it 'establishes a connection to api' do
        response = AirbenderService.connection_setup

        expect(response.headers.values).to eq(["Faraday v1.7.1"])
      end
    end
    describe '::search_by_nation' do
      it 'returns characters based on searched nation' do
        expect(AirbenderService.search_by_nation('Fire', 'Nation').second[:allies]).to include("Ty Lee")
        expect(AirbenderService.search_by_nation('Fire', 'Nation').third[:allies]).to include("Ozai")
        expect(AirbenderService.search_by_nation('Water', 'Tribe')[9][:name]).to include("Korra")
        expect(AirbenderService.search_by_nation('Earth', 'Kingdom')[2][:name]).to include("Cabbage merchant")
        expect(AirbenderService.search_by_nation('Air', 'Nomads')[14][:name]).to include("Momo")
      end
    end
  end
end
