class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub('_',' ')
    @characters = LastAirbenderFacade.total_characters(@nation, pages = 5)
  end
end
