class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo
  def initialize(character_info)
    @name = character_info[:name]
    @allies = character_info[:allies]
    @enemies = character_info[:enemies]
    @affiliation = character_info[:affiliation]
    @photo = character_info[:photoUrl]
  end
end