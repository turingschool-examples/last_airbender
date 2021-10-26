class SearchController < ApplicationController
  def index
    # @search_movies = Movie.search(params[:query]) if params[:query]
    nation_name = params[:nation].gsub!('_', '+')
    @found_members = AirbenderFacade.get_members(nation_name)
    # require "pry"; binding.pry
  end

  # def search
  #   # @found_members = AirbendersFacade.find_members(params[:nation])
  # end
end
