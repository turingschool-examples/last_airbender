class AirbenderService
  def self.members_by_nation(nation)
    affiliation = nation.split("_").join("+")
    response = conn.get("/api/v1/characters?affiliation=#{affiliation}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
