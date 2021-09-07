class SearchFacade
  # element: fire, water, earch, air
  # type: nation, tribe, kingdom, nomads

  def self.searched_nation(element, type)
    hash = AirbenderService.search_by_nation(element, type)
    hash.map do |char|
      Character.new(char)
    end
  end
end
