class NationService
  def self.nation_search(nation, per_page, page)
  # def self.nation_search(nation)
    # response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=97&page=1")
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=#{per_page}&page=#{page}") #make more dynamic
    parse_json(response)
  end

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
