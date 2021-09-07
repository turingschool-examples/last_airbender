class SearchController < ApplicationController
  def index
    @nation = (params[:nation].split"_").join(" ").capitalize
    @characters = CharacterFacade.char_fetch(params[:nation])
  end

  # private
  # def _params
  #   params.permit(:)
  # end
end
