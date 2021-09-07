require 'rails_helper'

RSpec.describe Character do
  it 'can create character objects' do
    nation = 'Fire+Nation'
    response = LastAirbenderFacade.top_characters(nation)

    response.each do |character|
      new_character = Character.new(character)

      expect(new_character.id).to be_a(String)
      expect(new_character.name).to be_a(String)
      expect(new_character.allies).to be_an(Array)
      expect(new_character.enemies).to be_an(Array)
      expect(new_character.affiliation).to be_a(String)
    end
  end

  it 'has a photo or nil' do
    nation = 'Fire+Nation'
    response = LastAirbenderFacade.top_characters(nation)

    character1 = Character.new(response.first)
    character2 = Character.new(response[1])

    expect(character1.photo).to eq(nil)
    expect(character2.photo).to be_a(String)
  end
end
