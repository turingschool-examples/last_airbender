class NationsFacade
  class << self
    def find_by_nation(nation)
      nations_info = NationsService.call_db("/api/v1/characters?affiliation=#{nation}&perPage=150&page=1")
      nations_info.map { |info| NationsInfo.new(info) }
    end
  end
end