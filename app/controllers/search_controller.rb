class SearchController < ApplicationController
  def index
    @member_search = AirbenderFacade.member_search(nation_name)
  end
end
