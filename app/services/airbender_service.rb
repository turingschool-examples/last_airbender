class AirbenderService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def self.nation_members(nation)
    nation = nation.gsub('_', '+')
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=497")

    JSON.parse(response.body, symbolize_names: true)
  end
end
