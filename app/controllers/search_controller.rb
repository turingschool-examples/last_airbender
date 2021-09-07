class SearchController < ApplicationController
    def index
      nation = params[:nation].gsub!('_', ' ').titleize
      url = 'https://last-airbender-api.herokuapp.com/api/v1/characters'
      response = Faraday.get(url, affiliation: nation, perPage: 150)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
