class SearchController < ApplicationController
  def index
    if params[:nation] && params[:nation].include?("fire")
      @total_chars = SearchFacade.chars_from_fire_nation.count
      @chars25 = SearchFacade.twenty_five_in_detail
    end
  end
end
