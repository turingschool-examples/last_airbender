class SearchController < ApplicationController
  def index
    split = params[:nation].split('_')
    first = split.first
    last = split.last
    params_nation = first + '+' + last
    @characters = CharacterFacade.characters_fetch(params_nation)
  end
end
