class SearchController < ApplicationController

  def index
    search_criteria = params[:nation]
    @characters = AvatarFacade.characters(AvatarFacade.render_request(search_criteria))
  end

end
