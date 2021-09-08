require 'rails_helper'

RSpec.describe CharacterFacade do
  before :each do
    
  end

  it 'can create an array of characters' do
    characters = CharacterFacade.character_information('Fire Nation')

    expect(characters[0]).to be_an_instance_of(Character)
    expect(characters.count).to eq(97)
  end
end
