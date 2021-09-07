require 'faraday'
require 'json'

class SearchService
  def self.connection_setup
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end

  def self.get_all_chars_for_fire_nation
    response = SearchService.connection_setup.get('/api/v1/characters?affiliation=fire&perPage=150')
    JSON.parse(response.body, symbolize_names: true)
  end
end
