class SearchFacade
  def self.nation_search(nation)
    json = SearchService.search(format_nation(nation))
    json.map do |person|
      Person.new(person)
    end
  end

  def self.format_nation(nation)
    nation.split("_").join(" ")
  end
end
