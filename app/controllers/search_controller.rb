class SearchController < ApplicationController
  def index
    test = SearchFacade.nation_search(params[:nation])
    binding.pry 
  end
end
