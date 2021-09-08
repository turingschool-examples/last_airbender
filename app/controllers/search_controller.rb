class SearchController < ApplicationController
  def index
    nation = params[:nation].titleize

    @characters = CharacterFacade.character_information(nation)
  end

#   def show
    
#   end

#   def new
    
#   end

#   def create
    
#   end

#   def edit
    
#   end

#   def update
    
#   end

#   def destroy
    
#   end

# private
#   def _params
#     params.permit(:)
#   end
end