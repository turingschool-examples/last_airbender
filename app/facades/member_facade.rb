class MemberFacade
  def self.search(nation)
    member_data = AirBenderService.get_members(nation)
    member_data.map do |member|
      Member.new(member)
    end
  end
end
