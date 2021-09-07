class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @nation = nation.gsub!("_", " ")
    @members = MemberFacade.search(nation)
  end
end
