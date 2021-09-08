require 'rails_helper'

RSpec.describe Character do
  it "exists" do
   attrs = AirbenderService.members_by_nation('fire_nation').first

   member = Character.new(attrs)

   expect(member).to be_a Character
   expect(member.name).to eq(attrs[:name])
   expect(member.allies).to eq(attrs[:allies])
   expect(member.enemies).to eq(attrs[:enemies])
   expect(member.affiliation).to eq(attrs[:affiliation])
 end
end
