class AirbenderService
    def self.members(nation)
      response = conn.get("/api/v1/characters?affiliation=#{nation}")
      JSON.parse(response.body, symbolize_names: true)
      # require "pry"; binding.pry
    end

    private

    def self.conn
      Faraday.new(url: "https://last-airbender-api.herokuapp.com") do |faraday|
      # Faraday.new(url: "https://last-airbender-api.herokuapp.com", headers: {accept: "application/json"}) do |faraday|
          # farady.headers = {accept: "application/json"}
        end
    end

end
