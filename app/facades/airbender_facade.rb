class AirbenderFacade

  def self.members(nation_name)
    results = AirbenderService.member_search(nation_name)
    # 5. Iterate over the array to pull out each hash and creating them as POROs.
    results.map do |member_data|
      Member.new(member_data)
    end
  end
end
