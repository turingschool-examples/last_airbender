class CharacterFacade

  def self.character_information(nation)
    service = CharacterService.affiliation(nation)
    service.map do |hash|
      Character.new(hash)
    end
  end
  
end