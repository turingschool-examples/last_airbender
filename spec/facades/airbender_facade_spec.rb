require 'rails_helper'

RSpec.describe 'AirbenderFacade' do
  describe 'class methods' do
    describe '::get_members' do
      it 'returns all members related to nation' do
        members = AirbenderFacade.get_members("Fire Nation")

        expect(members).to be_a(Array)
        expect(members.count).to eq(20)
        expect(members.first).to be_a(Member)
        expect(members.first.name).to eq("Chan (Fire Nation admiral)")
      end
    end
  end
end
