class FireNationFacade < LastAirbenderFacade
  def self.fire_nation_members
    members = LastAirbenderService.fire_nation
    nation_members(members)
  end
  def self.fire_nation_members_count
    members_count(fire_nation_members)
  end
  def self.fire_nation_members_first25
    first25(fire_nation_members)
  end
end
