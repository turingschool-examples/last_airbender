class AvatarFacade
	def self.characters_by_nation(nation)
		characters_data = AvatarService.get_results(nation)
		create_characters(characters_data)
	end

	private
	def self.create_characters(character_data)
		character_data.map do |character|
			Character.new(character)
		end
	end
end