class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub('_', '+')
    @characters = AvatarFacade.characters_by_nation(nation)
  end
end 