class NationsService
  class << self
    def call_db(path, params = {})
      response = conn.get(path) do |req|
        # params[:affiliation][4] = '+'
        # params[:affiliation]['f'] = 'F'
        # params[:affiliation][5] = 'N'
        # x = params[:affiliation].split('_')
        # y = x.each {|x| x.capitalize}
        # req.params[:affiliation] = ENV[params]
        req.params = params
        # require 'pry'; binding.pry
      end
      parse_data(response)
      require 'pry'; binding.pry
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