class SearchController < ApplicationController
  def index
    if params[:nation] && params[:nation].include?("fire")
      @chars = SearchFacade.chars_from_fire_nation
      @chars25 = SearchFacade.twenty_five_in_detail
    end
  end
end
