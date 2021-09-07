class SearchController < ApplicationController
  def index
    nation  = params[:nation]
    @nation_members = NationFacade.nation_search_details(nation, 97, 1)
    require "pry"; binding.pry
  end
end
