require 'rails_helper'

describe Character do
  it 'returns attributes' do
    data = {:_id=>"5cf5679a915ecad153ab68fd", :affiliation=>"Fire Nation Navy", :allies=>["Ozai"], :enemies=>["Earth Kingdom"], :name=>"Chan (Fire Nation admiral)"}
    character = Character.new(data)
    expect(character.name).to eq("Chan (Fire Nation admiral)")
    expect(character.affiliation).to eq("Fire Nation Navy")
    expect(character.allies).to eq(["Ozai"])
    expect(character.enemies).to eq(["Earth Kingdom"])
  end
end
