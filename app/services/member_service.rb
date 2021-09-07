class MemberService
  def self.search_by_affiliation(nation)
    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters') do |req|
      req.params['affiliation'] = nation
      req.params['perPage'] = 25
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
