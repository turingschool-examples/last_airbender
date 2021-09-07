class AvatarService
  def initialize; end

  def self.render_request(search_criteria)
    request = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=100&affiliation=#{search_criteria}")
    JSON.parse(request.body)
  end
end
