class AirBenderService
  def self.search_kingdoms(element, name)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{element}+#{name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
