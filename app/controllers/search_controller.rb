class SearchController < ApplicationController
  def index
    if params[:nation] && params[:nation].include?("fire")
      @chars = SearchFacade.chars_from_fire_nation
    end
  end
end
