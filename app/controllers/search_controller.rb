class SearchController < ApplicationController
  # I know! Technical Debt on line 5, couldn't think of another way to delete the underscore quickly!

  def index
    params[:nation] = params[:nation].gsub(/[_]/, '_' => ' ')

    @member_count = MemberFacade.count_affiliations(params[:nation])
    @members = MemberFacade.create_members(params[:nation])
  end
end
