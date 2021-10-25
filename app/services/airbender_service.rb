class AirbenderService
    def self.members(group)
        response = conn.get("/api/v1/characters?affiliation=#{group}")
        JSON.parse(response.body, symbolize_names: true)
    end

    private

    def self.conn
        Faraday.new(url: "https://last-airbender-api.herokuapp.com") do |faraday|
        end
    end

end
