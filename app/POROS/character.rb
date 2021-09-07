class Character
	attr_reader :name,
	            :image,
	            :affiliation

	def initialize(data)
		@name = data[:name]
		@image = data[:photoUrl]
		@allies = data[:allies].join(", ")
		@enemies = data[:enemies].join(", ")
		@affiliation = data[:affiliation]
	end

	def has_image?
		@image != nil
	end

	def display_enemies
		if @enemies.empty?
			@enemies = "None."
		else
			@enemies
		end
	end

	def display_allies
		if @allies.empty?
			@allies = "None."
		else
			@allies
		end
	end
end
