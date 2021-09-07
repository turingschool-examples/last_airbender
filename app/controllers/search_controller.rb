class SearchController < ApplicationController
  def index
    @nation = convert_nation_input(nation_params[:nation])
    @people = SearchFacade.nation_search(@nation)
    @member_count = SearchFacade.nation_member_count(@nation)
  end

  private
  def nation_params
    params.permit(:nation)
  end

  def convert_nation_input(nation)
    nation.split("_").join(" ")
  end
end
