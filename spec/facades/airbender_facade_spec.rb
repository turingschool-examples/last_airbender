require 'rails_helper'

describe AirbenderFacade, type: :facade do
  describe 'class methods' do
    describe '.nation_members' do
      it 'returns an array of member objects', :aggregate_failures do
        members = AirbenderFacade.nation_members('fire nation')

        expect(members).to be_an(Array)
        expect(members.first).to be_a(Member)
        expect(members.first.affiliation).to include('Fire Nation')
      end
    end
  end
end
