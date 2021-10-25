class AirbendersController < ApplicationController
  # coordination logic

  # controller > Facade (service call) > Service (call api and parse response)
  # > Facade (manage data and create object(s) to send back to the controller) > Controller (receives object back from Facade, and sends to the view)

  def search
    @found_members = AirbendersFacade.get_members(params[:search])
  end

end
