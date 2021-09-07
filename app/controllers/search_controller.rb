class SearchController < ApplicationController
    def index
      element = params[:nation].split('_')[0]
      type = params[:nation].split('_')[1]
      @search = SearchFacade.searched_nation(element, type)
    end
  end
