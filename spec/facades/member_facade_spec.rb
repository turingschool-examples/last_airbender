require 'rails_helper'

RSpec.describe MemberFacade do
  it 'can count the number of affiliations of a nation' do
    VCR.use_cassette('characters') do
      search = 'Fire Nation'
      expect(MemberFacade.count_affiliations(search)).to eq(97)
    end
  end

  it 'can create first 25 members of the associated nation' do
    VCR.use_cassette('first_characters') do
      search = 'Fire Nation'
      members = MemberFacade.create_members(search)
      expect(members.count).to eq(25)
      members.each do |member|
        expect(member).to be_an_instance_of(Member)
      end
    end
  end
end
