class CharacterFacade
  def self.char_fetch(nation)
    json = CharacterService.get_char(nation)

    json.map do |result|
      Character.new(result)
    end
  end
end
