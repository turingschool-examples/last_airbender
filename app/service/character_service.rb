class CharacterService

  def self.get_characters(params_nation)
    endpoint = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{params_nation}"
    get_data(endpoint)
  end


  def self.get_data(endpoint)
    response = Faraday.get(endpoint)
    JSON.parse(response.body, symbolize_trues: true)
  end
end
