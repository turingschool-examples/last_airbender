class ApplicationController < ActionController::Base
  def find_nation(params)
    if params == 'fire_nation'
      'Fire Nation'
    elsif params == 'air_nomads'
      'Air Kingdom'
    elsif params == 'earth_kingdom'
      'Earth Kingdom'
    elsif params == 'water_tribes'
      'Water Tribes'
    end
  end
  def find_members(params)
    if params == 'fire_nation'
      FireNationFacade.fire_nation_members_first25
    elsif params == 'air_nomads'
      # AirNomadsFacade.air_nomads_members_first25
    elsif params == 'earth_kingdom'
      # EarthKingdomFacade.earth_kingdom_members_first25
    elsif params == 'water_tribes'
      # WaterTribes.water_tribes_members_first25
    end
  end
  def find_count(params)
    if params == 'fire_nation'
      FireNationFacade.fire_nation_members_count
    elsif params == 'air_nomads'
      # AirNomadsFacade.air_nomads_members_count
    elsif params == 'earth_kingdom'
      # EarthKingdomFacade.earth_kingdom_members_count
    elsif params == 'water_tribes'
      # WaterTribes.water_tribes_members_count
    end
  end
end
