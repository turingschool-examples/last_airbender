require 'rails_helper'

describe AirbenderService, type: :service do
  describe 'class methods' do
    describe '.nation_members' do
      it 'returns nation members by nation', :aggregate_failures do
        members = AirbenderService.nation_members('fire_nation')
        expect(members).to be_an(Array)
        expect(members.size).to be <= 497

        member_data = members.second
        expect(member_data).to be_a(Hash)

        expect(member_data).to have_key(:_id)
        expect(member_data[:_id]).to be_a(String)

        expect(member_data).to have_key(:allies)
        expect(member_data[:allies]).to be_an(Array)
        expect(member_data[:allies].first).to be_a(String)

        expect(member_data).to have_key(:enemies)
        expect(member_data[:enemies]).to be_an(Array)
        expect(member_data[:enemies].first).to be_a(String)

        # NOTE: Guard clause used because not all members have a photo URL
        unless member_data[:photoUrl].nil?
          expect(member_data).to have_key(:photoUrl)
          expect(member_data[:photoUrl]).to be_a(String)
        end

        expect(member_data).to have_key(:name)
        expect(member_data[:name]).to be_a(String)

        expect(member_data).to have_key(:affiliation)
        expect(member_data[:affiliation]).to be_a(String)
      end
    end
  end
end
