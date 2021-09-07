class SearchController < ApplicationController
  def index
    nation= params[:nation].gsub(/[_]/, '+') 
    data = JSON.parse(Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}").body, symbolize_names: true)
    @members = data.map do |member| 
      Member.new(member)
    end
  end
end