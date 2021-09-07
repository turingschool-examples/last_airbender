require 'rails_helper'

RSpec.describe Character do
  it 'can create character objects' do
    nation = 'Fire+Nation'
    response = LastAirbenderFacade.top_characters(nation)

    response.each do |character|
      Character.new(character)

      expect(character.id).to be_a(String)
      expect(character.name).to be_a(String)
      expect(character.allies).to be_an(Array)
      expect(character.enemies).to be_an(Array)
      expect(character.phot0).to be_a(String)
      expect(character.affiliation).to be_a(String)
    end
  end
end
