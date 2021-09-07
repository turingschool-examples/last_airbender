require 'rails_helper'

describe FireNationFacade do
  it 'returns fire nation members' do
    members = FireNationFacade.fire_nation_members

    expect(members).to be_a(Array)
    expect(members.count).to eq(97)
    expect(members.first.name).to eq("Chan (Fire Nation admiral)")
    expect(members.first.affiliation).to eq("Fire Nation Navy")
    expect(members.first.allies).to eq(["Ozai"])
    expect(members.first.enemies).to eq(["Earth Kingdom"])
  end
  it 'returns count fire nation members' do
    members = FireNationFacade.fire_nation_members_count

    expect(members).to eq(97)
  end
  it 'limits fire nation members to 25' do
    members = FireNationFacade.fire_nation_members_first25

    expect(members).to be_a(Array)
    expect(members.count).to eq(25)
    expect(members.first.name).to eq("Chan (Fire Nation admiral)")
  end
end
