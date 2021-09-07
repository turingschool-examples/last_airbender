class LastAirbenderFacade
  #need to make the member total perPage number more dynamic
  def self.nation_member_total(input)
    endpoint = "/api/v1/characters?perPage=200&affiliation=#{input}"
    LastAirbenderService.get_data(endpoint)
  end

  def self.first_25_members(input)
    endpoint = "/api/v1/characters?perPage=25&affiliation=#{input}"
    LastAirbenderService.get_data(endpoint).map do |member|
      Member.new(member)
    end
  end
end
