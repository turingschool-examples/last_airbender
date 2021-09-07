class SearchController < ApplicationController
  def index
    @nation = find_nation(params[:nation])
    @members = find_members(params[:nation])
    @count = find_count(params[:nation])
  end
end
