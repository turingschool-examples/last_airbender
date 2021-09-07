class CharacterFacade
  @@service = CharacterService.new

  def self.character_information(nation)
    cast = @@service.affiliation(nation)
    require "pry"; binding.pry
  end
  
end