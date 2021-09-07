class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photo

  def initialize(char)
    @name = char[:name]
    @allies = char[:allies]
    @enemies = char[:enemies]
    @affiliation = char[:affiliation]
    @photo = char[:photoUrl]
  end

end
