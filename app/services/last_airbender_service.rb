class LastAirbenderService
  def self.conn(url)
    Faraday.new(url)
  end

  def self.get_affiliations(query, page)
    response = conn('https://last-airbender-api.herokuapp.com/api/v1/characters').get do |f|
      f.params['affiliation'] = query
      f.params['page'] = page
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_affiliations(query)
    page = 1
    results = []
    until get_affiliations(query, page).empty?
      results << get_affiliations(query, page)
      page += 1
    end
    results.flatten
  end
end
