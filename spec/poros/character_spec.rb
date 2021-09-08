require 'rails_helper'

RSpec.describe Character do
  it 'can verify that it exists' do
    character = Character.new({:allies=>["Ty Lee"],
                              :enemies=>["Appa"],
                              :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
                              :name=>"Circus master",
                              :affiliation=>"Fire Nation circus"})

    expect(character).to be_an_instance_of(Character)
    expect(character.name).to eq("Circus master")
    expect(character.allies).to eq(["Ty Lee"])
    expect(character.enemies).to eq(["Appa"])
    expect(character.affiliation).to eq("Fire Nation circus")
    expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
