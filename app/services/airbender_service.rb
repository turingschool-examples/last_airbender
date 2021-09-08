class AirbenderService

  def self.member_search(nation_name)
    # 2. App gets data from endpoint.
    response = conn.get("/api/v1/characters?affiliation=#{nation_name.gsub('_', '+')}&perPage=100")
    #response is being defined as the result of the search given query params.
    body = parse_json(response)
  end

  # 1. App finds connection to endpoint.
  def self.conn
    #Defining the connection to the API endpoint.
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
  end

  # 3. Converting the raw json response to ruby (usually hash or array dependent upon api endpoint documentation).
  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
