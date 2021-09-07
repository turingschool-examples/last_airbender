class ApplicationController < ActionController::Base
  helper_method :set_affiliation

  def set_affiliation
    if params[:nation] == 'fire_nation'
      'affiliation=Fire+Nation'
    elsif params[:nation] == 'air_nomads'
      'affiliation=Air+Nomads'
    elsif params[:nation] == 'earth_kingdom'
      'affiliation=Earth+Kingdom'
    else
      'affiliation=Water+Tribes'
    end
  end
end
