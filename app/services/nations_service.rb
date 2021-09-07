class NationsService
  class << self
    def call_db(path, params = {})
      response = conn.get(path)
      parse_data(response)
    end

    private 

    def conn
      Faraday.new("https://last-airbender-api.herokuapp.com")
    end

    def parse_data(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end