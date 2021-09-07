class KingdomFacade
  def self.search(element, name)
    kingdom_data = AirBenderService.search_kingdoms(element, name)
    kingdom_data[:data].map do |kingdom|
      Kingdom.new(kingdom)
    end
  end
end
