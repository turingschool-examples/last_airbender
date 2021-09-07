class ApiService
  def self. get_link(params)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters#{params}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
