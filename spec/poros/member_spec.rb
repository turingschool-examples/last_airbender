require 'rails_helper'

describe Member, type: :poro do
  describe 'object creation' do
    let(:member) { Member.new(attrs) }
    let(:attrs) do
      {
        _id: "5cf5679a915ecad153ab6906",
        allies: ["Ty Lee"],
        enemies: ["Appa"],
        name: "Circus master",
        affiliation: "Fire Nation circus",
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819"
      }
    end

    it 'exists' do
      expect(member).to be_a Member
      expect(member.id).to eq(attrs[:_id])
      expect(member.allies).to be_an Array
      expect(member.allies).to eq(attrs[:allies])
      expect(member.enemies).to be_an Array
      expect(member.enemies).to eq(attrs[:enemies])
      expect(member.photo_url).to eq(attrs[:photoUrl])
      expect(member.name).to eq(attrs[:name])
      expect(member.affiliation).to eq(attrs[:affiliation])
    end
  end
end
