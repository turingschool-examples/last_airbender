class SearchController < ApplicationController
  def index
    @member_search = AirbenderFacade.members(params[:nation])
  end
end
