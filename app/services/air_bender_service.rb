class AirBenderService
  def self.get_members(nation)
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end

# Notes for instructor:
# I am unsure if passing in 2 arguments for the API is correct. I tried
# combining the two and setting it equal to a variable called element_name
# so that I could interpolate just one thing at the end of the API, but
# along the way I kept changing it back and forth, testing different things out,
# and ultimately ended back here after getting confused.
