class SearchController < ApplicationController
  def index
    #figure out changing '_' to '+'
    nation = params[:nation]
    @nations = AirbenderFacade.get_nation_info(nation)
  end
end
