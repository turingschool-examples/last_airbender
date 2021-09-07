module AirBenderServices
  def self.get_data(nation)
    nation = nation.gsub(/[_]/, '+')
    JSON.parse(Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}").body, symbolize_names: true)
  end
end