class AvatarService
  def get_api_data(uri)
    conn = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters#{uri}")
    JSON.parse(conn.body, symbolize_names: true)
  end
end
