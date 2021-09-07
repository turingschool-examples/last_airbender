class AirbenderService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  # There are 497 characters in total.  This endpoint request will retrieve
  #   up to 497 characters.
  def self.nation_members(nation, per_page = 497)
    nation = nation.gsub('_', '+')
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=#{per_page}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
