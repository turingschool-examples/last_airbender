class SearchController < ApplicationController
  def index
    # @search_movies = Movie.search(params[:query]) if params[:query]

  end

  def search
    @found_members = AirbendersFacade.find_members(params[:search])
  end
end
