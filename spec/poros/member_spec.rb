require 'rails_helper'

 RSpec.describe Member do
   it 'exists and has attributes' do
     attributes = {
        allies: ["Ozai"],
        enemies: ["Earth Kingdom"],
        name: "Chan (Fire Nation admiral)",
        affiliation: "Fire Nation Navy"}

    member = Member.new(attributes)

    expect(member).to be_an_instance_of(Member)
    expect(member.name).to eq(attributes[:name])
    expect(member.allies).to eq(attributes[:allies])
    expect(member.enemies).to eq(attributes[:enemies])
    expect(member.affiliation).to eq(attributes[:affiliation])
   end
 end
