class SearchController < ApplicationController
  def index
    if params[:nation]
      @total_chars = SearchFacade.chars_from_fire_nation.count if params[:nation].include?("fire")
      @chars25 = SearchFacade.twenty_five_in_detail if params[:nation].include?("fire")
    end
  end
end
