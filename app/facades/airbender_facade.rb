class AirbenderFacade

    def self.get_members(nation)
      nation.gsub!(' ', '+')
      members_data = AirbenderService.members(nation)

      all_members = members_data.map do |member|
          Member.new(member)
      end
      # require "pry"; binding.pry

    end
end
