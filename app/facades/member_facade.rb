class MemberFacade
  def self.member_search(nation)
    search_results = MemberService.search_by_affiliation(nation)
    top_twenty_five_results = search_results[:members].map do |result|
      Member.new(result)
    end
  end
end
