class AirbenderFacade
  def self.members_by_nation(nation)
    json = AirbenderService.members_by_nation(nation)

    json.map do |hash|
      Character.new(hash)
    end
  end
end
