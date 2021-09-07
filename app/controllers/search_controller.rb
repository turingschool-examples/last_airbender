class SearchController < ApplicationController
  def index
    SearchFacade.nation_search(params[:nation])
  end
end
