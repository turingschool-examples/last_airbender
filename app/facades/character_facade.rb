class CharacterFacade

  def self.characters_fetch(params_nation)
    json = CharacterService.get_characters(params_nation)
    json.map[0..24].map do |character|
      Character.new(character)
    end
  end
end
