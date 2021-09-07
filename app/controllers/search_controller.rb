class SearchController < ApplicationController

  def index
    @characters = AvatarFacade.characters_by_nation(params[:nation])
  end

end
