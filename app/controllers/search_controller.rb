class SearchController < ApplicationController
  def index
    nation = params[:nation].split('_').join(' ')
    endpoint = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}&perPage=100"
    response = AirbenderService.get_data(endpoint)
    @people = response.map do |person|
      Person.new(person)
    end
  end
end
