class SearchFacade
  def self.nation_search(nation)
    json = SearchService.search(nation)
    json.map do |person|
      Person.new(person)
    end
  end
end
