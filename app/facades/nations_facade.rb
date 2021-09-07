class NationsFacade
  class << self
    def find_by_nation(nation)
      params = {affiliation: nation}
      # params[:affiliation][4] = '+'
      params[:affiliation]['f'] = 'F'
      params[:affiliation][5] = 'N'
      nations_info = NationsService.call_db("/api/v1/characters?", params)
      require 'pry'; binding.pry
    end
  end
end