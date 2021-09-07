class CharacterService
  def self.get_char(nation)
    response = get_data('https://last-airbender-api.herokuapp.com/api/v1/characters').get do |req|
      req.params['affiliation'] = nation
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_data(endpoint)
    Faraday.new(endpoint)
  end
end
