require 'rails_helper'

RSpec.describe Member do
  before :each do
    json = File.read('./spec/fixtures/member_search.json')
    members = JSON.parse(json, symbolize_names: true)
    member_details = members.first
    @member = Member.new(member_details)
  end

  it 'member details' do
    expect(@member).to be_a(Member)
    expect(@member.name).to eq("Chan (Fire Nation admiral)")
    expect(@member.enemies).to eq(["Earth Kingdom"])
    expect(@member.allies).to eq(["Ozai"])
    expect(@member.affiliation).to eq("Fire Nation Navy")
    # expect(@member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
