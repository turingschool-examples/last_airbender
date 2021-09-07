class AirbenderService

  def self.member_search(nation_name)
    response = conn.get("GET /api/v1/characters?affiliation=#{nation_name}")
    body = parse_json(response)
    body[:results]
  end

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
