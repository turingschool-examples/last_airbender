require 'rails_helper'

RSpec.describe AirbenderDetails do
  it 'exists' do
    attributes = {
      name: "Bujing",
      allies: "Ozai",
      enemies: "Zuko",
      affiliation: "Fire Nation Military"
    }

    nation = AirbenderDetails.new(nation)

    expect(nation).to be_a AirbenderDetails
    expect(nation.name).to be_a(String)
    expect(nation.allies).to be_an(Array)
    expect(nation.enemies).to be_an(Array)
    expect(nation.affiliation).to be_a(String)
  end
end
