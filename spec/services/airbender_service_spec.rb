require 'rails_helper'

describe AirbenderService do
  context "class methods" do
    context ".members_by_nation" do
      it "returns members data by nation search" do
        search = AirbenderService.members_by_nation
        expect(search).to be_an Array
        expect(search.size).to eq(20)

        member_data = search.first

        expect(member_data).to have_key :id
        expect(member_data[:id]).to be_an(String)

        expect(member_data).to have_key :allies
        expect(member_data[:allies]).to be_a(Array)

        expect(member_data).to have_key :enemies
        expect(member_data[:enemies]).to be_a(Array)

        expect(member_data).to have_key :affiliation
        expect(member_data[:affiliation]).to be_a(String)
      end
    end
  end
end
