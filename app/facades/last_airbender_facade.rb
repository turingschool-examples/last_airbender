class LastAirbenderFacade
  def self.nation_members(members)
    members.map do |member|
      Character.new(member)
    end
  end
  def self.members_count(nation)
    nation.count
  end
  def self.first25(nation)
    nation[0..24]
  end
end
