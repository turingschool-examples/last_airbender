class KingdomsController < ApplicationController

  def search
    element = params[:element]
    name = params[:name]
    @kingdom = KingdomFacade.search(element, name)
  end
end
