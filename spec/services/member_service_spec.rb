require 'rails_helper'

RSpec.describe MemberService do
  describe '.search_by_affiliation' do
    it 'returns a list of members that live in fire nation' do
      response = MemberService.search_by_affiliation("Fire Nation")

      expect(response).to be_an Array
      expect(response.length).to eq 25
      expect(response.first).to be_a Hash
      expect(response.first[:name]).to eq("Chan (Fire Nation admiral)")
      expect(response.first[:enemies]).to eq(["Earth Kingdom"])
      expect(response.first[:allies]).to eq(["Ozai"])
      expect(response.first[:affiliation]).to eq("Fire Nation Navy")
    end
  end
end
