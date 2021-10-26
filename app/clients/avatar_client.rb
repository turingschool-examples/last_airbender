class AvatarClient
  class << self
    def fetch(url)
      response = conn.get(url)
      parse_data(response)
    end

    private

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def conn
      Faraday.new('https://last-airbender-api.herokuapp.com')
    end
  end
end
