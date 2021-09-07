require 'rails_helper'

RSpec.describe AirbenderService do
  describe 'class methods' do
    describe '::connection_setup' do
      it 'establishes a connection to api' do
        response = AirbenderService.connection_setup

        expect(response.status).to eq("200")
      end
    end
    describe '::search_by_nation' do
      it 'returns characters based on searched nation' do
        require "pry"; binding.pry
        expect(AirbenderService.search_by_nation('Fire', 'Nation').second[:allies]).to include("Ty Lee")
        expect(AirbenderService.search_by_nation('Fire', 'Nation').third[:allies]).to include("Zuko")
        expect(AirbenderService.search_by_nation('Water', 'Tribe')[9][:name]).to include("Korra")
        expect(AirbenderService.search_by_nation('Earth', 'Kingdom')[2][:name]).to include("Cabbage merchant")
        expect(AirbenderService.search_by_nation('Air', 'Nomads')[14][:name]).to include("Momo")
      end
    end
  end
end
