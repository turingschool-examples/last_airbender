class SearchFacade
  def self.nation_search(nation)
    json = SearchService.search(format_nation(nation))
    binding.pry
  end

  def self.format_nation(nation)
    nation.split("_").join(" ")
  end
end
