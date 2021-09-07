class AirbenderFacade
  def self.get_nation_info(nation)
    json = AirbenderService.nation_info(nation)
    @nations = json.map do |info|
      AirbenderDetails.new(info)
    end
  end
end
