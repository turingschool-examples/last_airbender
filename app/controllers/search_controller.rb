class SearchController < ApplicationController
  def index
    # require "pry"; binding.pry
    @member_search = AirbenderFacade.members(params[:nation])
  end
end
