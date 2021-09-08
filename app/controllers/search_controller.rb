class SearchController < ApplicationController
  def index
    @members = AirbenderFacade.members_by_nation(params[:nation])
  end
end
