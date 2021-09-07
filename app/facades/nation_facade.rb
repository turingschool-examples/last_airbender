class NationFacade
  def self.nation_search_details(nation = 'Fire Nation', per_page = 97, page = 1)
    json = NationService.nation_search(nation)
    json[:results].map do |data|
      Nation.new(data)
    end.first(25)
  end
end


#check if there are photos
