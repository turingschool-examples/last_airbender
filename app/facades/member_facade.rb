class MemberFacade
  def self.count_affiliations(query)
    LastAirbenderService.get_affiliations(query).count
  end

  def self.create_members(query)
    json = LastAirbenderService.get_affiliations(query)[0..24]
    json.map do |info|
      Member.new(info)
    end
  end
end
