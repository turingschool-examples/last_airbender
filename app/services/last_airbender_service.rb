class LastAirbenderService
  def self.characters(nation, page)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&page=#{page}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
