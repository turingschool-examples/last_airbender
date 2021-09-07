class Character
  attr_reader :name, :affiliation, :allies, :enemies, :photo

  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
  end
end
