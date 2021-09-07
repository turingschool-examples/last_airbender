class SearchController < ApplicationController
  def index
    @nation = (params[:nation].split"_").join(" ")
    @characters = CharacterFacade.char_fetch(@nation)
  end
end
