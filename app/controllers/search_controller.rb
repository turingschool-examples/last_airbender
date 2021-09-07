class SearchController < ApplicationController
  def index
    @nation = convert_nation_input(params[:nation])
    @people = SearchFacade.nation_search(@nation)
  end

  private
  def convert_nation_input(nation)
    nation.split("_").join(" ")
  end
end
