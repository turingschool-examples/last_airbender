class AvatarService
  def initialize; end

  def self.render_request(search)
    search_criteria = search.split('_')[0].upcase
    request = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=100&affiliation=#{search_criteria}+NATION")
    JSON.parse(request.body)
  end

  def self.characters(request_body)
    request_body
  end
end
