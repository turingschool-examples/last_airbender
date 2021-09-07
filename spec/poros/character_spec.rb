require 'rails_helper'

RSpec.describe Character do
  it 'can create character objects' do
    nation = 'Fire+Nation'
    response = LastAirbenderFacade.total_characters(nation)

    expect(response.first.id).to be_a(String)
    expect(response.first.name).to be_a(String)
    expect(response.first.allies).to be_an(Array)
    expect(response.first.enemies).to be_an(Array)
    expect(response.first.affiliation).to be_a(String)
  end

  it 'has a photo or nil' do
    nation = 'Fire+Nation'
    response = LastAirbenderFacade.total_characters(nation)

    expect(response.first.photo).to eq(nil)
    expect(response[1].photo).to be_a(String)
  end
end
