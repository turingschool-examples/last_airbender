class SearchController < ApplicationController
  def index
    if params[:nation] == 'fire_nation'
      input = 'Fire+Nation'
      @nation = 'Fire Nation'
      @member_count = LastAirbenderFacade.nation_member_total(input).count
      @members = LastAirbenderFacade.first_25_members(input)
    end
    #add additional confitionals for each nation
  end
end
