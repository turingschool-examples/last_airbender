class AirbenderFacade

    def self.get_members(nation)
      nation.gsub!(' ', '+')

      members_data = AirbenderService.members(nation)

      members_data.map do |member_data|
          Member.new(member_data)
      end
    end
end
