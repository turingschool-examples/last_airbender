class SearchController < ApplicationController
  def index
    @nation = NationsFacade.find_by_nation(params[:nation]) 
    require 'pry'; binding.pry 
  end
end