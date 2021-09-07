class SearchController < ApplicationController
  def index
     @members = AirBenderFacade.get_nation_members(params[:nation])
  end
end