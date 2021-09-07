class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @members = AirbenderFacade.nation_members(params[:nation])
  end
end
