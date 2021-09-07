class AirbenderFacade
  def self.nation_members(nation)
    json = AirbenderService.nation_members(nation)

    json.map do |member_data|
      Member.new(member_data)
    end
  end
end
