require 'faraday'
require 'json'

class AirbenderService
  def self.connection_setup
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
  end

  def self.search_by_nation(element, type)
    response = AirbenderService.connection_setup.get("/api/v1/characters?affiliation=#{element}+#{type}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
