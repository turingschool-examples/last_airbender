class SearchFacade
  def self.nation_search(nation)
    json = SearchService.search(nation)
    json.map do |person|
      Person.new(person)
    end
  end

  def self.nation_member_count(nation)
    json = SearchService.member_count(nation)
  end
end
