require 'rails_helper'

RSpec.describe Member do
  it 'receives member data and initializes ruby objects' do
    json = File.read('./spec/fixtures/chan.json')
    member_data = JSON.parse(json, symbolize_names: true)
    member = Member.new(member_data)

    expect(member.name).to eq('Chan (Fire Nation admiral)')
    expect(member.allies).to eq(['Ozai'])
    expect(member.enemies).to eq(['Earth Kingdom'])
    expect(member.affiliation).to eq('Fire Nation Navy')
  end
end
