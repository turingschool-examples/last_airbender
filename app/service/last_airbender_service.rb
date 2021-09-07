class LastAirbenderService
  def self.get_data(endpoint)
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
    response = conn.get(endpoint)
    JSON.parse(response.body, symbolize_names: true)
  end
end
