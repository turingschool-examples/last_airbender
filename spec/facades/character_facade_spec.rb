require 'rails_helper'

RSpec.describe CharacterFacade do
  before :each do
    
  end

  it 'can create a movie' do
    characters = CharacterFacade.character_information('Fire Nation')

    expect(characters).to be_an_instance_of(Character)
    expect(characters.name).to eq("Chan (Fire Natation admiral")
  end
end
