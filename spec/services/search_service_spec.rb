require 'rails_helper'

RSpec.describe SearchService do
  describe 'class methods' do
    describe '::get_all_chars_for_fire_nation' do
      it 'establishes the connection and gets all characters' do
        expect(SearchService.get_all_chars_for_fire_nation.count).to eq(111)
      end
    end
  end
end
