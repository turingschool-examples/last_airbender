class NationService
  def self.nation_search(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    parse_json(response)
  end

  # def self.nation_search(nation)
  #   response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}") do |req|
  # end

  private

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com') do |req|
      # req.params['query'] = nation
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
