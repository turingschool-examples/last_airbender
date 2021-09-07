class SearchController < ApplicationController

  def index
    search_criteria = params[:nation]
    @characters = AvatarService.characters(AvatarService.render_request(search_criteria))
  end

end
