class AvatarFacade
  def self.characters_by_nation(nation)
    service = AvatarService.new
    characters = service.get_api_data()
  end
end
