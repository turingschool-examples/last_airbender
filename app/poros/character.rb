class Character
  attr_reader :name, :allies, :enemies, :image

  def initialize(char)
    @name = char[:name]
    @allies = char[:allies]
    @enemies = char[:enemies]
    @image = char[:photoUrl]
  end
end
