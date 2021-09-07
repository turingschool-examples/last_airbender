class ApiService
  def self.get_data(endpoint)
    Faraday.new(endpoint)
  end

  def self.get_json(data)
    JSON.parse(data.body, symbolize_names: true)
  end
end
