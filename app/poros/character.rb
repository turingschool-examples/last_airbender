class Character
  attr_reader :name, :allies, :enemies, :image, :affiliation

  def initialize(char)
    @name = char[:name]
    @allies = char[:allies]
    @enemies = char[:enemies]
    @image = char[:photoUrl]
    @affiliation = char[:affiliation]
  end
end
