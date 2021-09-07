class SearchController < ApplicationController
  def index
    results = MemberFacade.member_search(params[:nation])
    @members = results[:top_twenty_five_results]
  end
end
