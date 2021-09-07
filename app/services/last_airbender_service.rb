class LastAirbenderService
  def self.conn(url)
    Faraday.new(url)
  end

  def self.get_affiliations(query)
    response = conn('https://last-airbender-api.herokuapp.com/api/v1').get('/characters') do |f|
      f.params['affiliation'] = query
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
