require 'rails_helper'

RSpec.describe MemberFacade do
  describe '.member_search' do
    it 'returns an array of members that live in fire nation' do
    
      results = MemberFacade.member_search('Fire Nation')

      expect(response).to be_an(Array)
      expect(response.first).to be_a(Member)
      expect(response.first.name).to eq("Chan (Fire Nation admiral)")
      expect(response.first.enemies).to eq("Earth Kingdom")
      expect(response.first.allies).to eq("Ozai")
      expect(response.first.affiliation).to eq("Fire Nation Navy")
      expect(response.first.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
    end
  end
end
