class AvatarFacade
  def self.characters_by_nation(nation)
    service = AvatarService.new
    characters = service.get_api_data("?affiliation=#{nation}&perPage=100")
    characters.map do |character|
      CharacterDetails.new(character)
    end
  end
end
