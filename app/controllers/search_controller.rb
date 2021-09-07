class SearchController < ApplicationController
    def index
      @nation = params[:nation].gsub!('_', ' ').titleize
      url = 'https://last-airbender-api.herokuapp.com/api/v1/characters'
      response = Faraday.get(url, affiliation: @nation, perPage: 150)
      json = JSON.parse(response.body, symbolize_names: true)
      @total_members = json.count
      @members = json[0..24].map do |member|
        NationMembers.new(member)
      end
    end
  end
