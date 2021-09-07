class MemberFacade
  def self.count_affiliations(query)
    LastAirbenderService.get_all_affiliations(query).count
  end
end
