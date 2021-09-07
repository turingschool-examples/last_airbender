class SearchController < ApplicationController
  def index
    if params[:nation].present?
      require "pry"; binding.pry
      # require "pry"; binding.pry
      # https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=nation+fire
      # # @search = APIS::NationFacade.nation_residents
      # connection_setup = Faraday.new(url: "https://last-airbender-api.herokuapp.com/") do |faraday|
      #   faraday.headers['Content-Type'] = 'application/json;charset=utf-8'
      # end
      # response = connection_setup.get()
    end
  end
end
