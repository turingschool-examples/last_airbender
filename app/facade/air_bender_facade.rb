module AirBenderFacade
  def self.get_nation_members(nation)
    data = AirBenderServices.get_data(nation)
    data.map do |member| 
      Member.new(member)
    end
  end
end