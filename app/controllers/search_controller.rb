class SearchController < ApplicationController
  def index
    affiliation = set_affiliation
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?#{affiliation}&perPage=150")
    @inhabitants = JSON.parse(response.body, symbolize_names: true)
    @nation = params[:nation]
  end
end