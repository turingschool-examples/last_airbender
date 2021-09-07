class SearchController < ApplicationController
  def index
    name = params[:nation].split('_').map(&:capitalize)
    final_name = name[0] + '+' + name[1]
    @nations = NationsFacade.find_by_nation(final_name) 
  end
end