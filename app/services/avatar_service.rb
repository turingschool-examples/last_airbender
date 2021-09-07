class AvatarService
  def self.get_results(search)
    response = conn.get("/api/v1/characters?affiliation=#{search}&perPage=100")
    parse(response)
  end

  private

  def self.conn
    Faraday.new("https://last-airbender-api.herokuapp.com")
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end