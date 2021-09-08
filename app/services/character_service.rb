class CharacterService

  def self.get_data(url)
    Faraday.new(url)
  end

  def self.affiliation(nation)
    response = get_data("https://last-airbender-api.herokuapp.com/api/v1/characters").get do |f|
      f.params['affiliation'] = nation
      f.params['perPage'] = 150
    end
    
    JSON.parse(response.body, symbolize_names: true)
  end
end