class AirbenderFacade
  # There are 497 characters in total.  This endpoint request will retrieve
  #   up to 497 characters.
  def self.nation_members(nation)
    json = AirbenderService.nation_members(nation, per_page = 497)

    json.map { |member_data| Member.new(member_data) }
  end
end
