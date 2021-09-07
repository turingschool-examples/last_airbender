class SearchController < ApplicationController
  def index
    @members = AirbenderService.members_by_nation(params[:nation])
  end
end
