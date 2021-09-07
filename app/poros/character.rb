class Character
  attr_reader :id, :allies, :enemies, :name, :affiliation, :photo

  def initialize(hash)
    @id = hash[:_id]
    @allies = hash[:allies]
    @enemies = hash[:enemies]
    @name = hash[:name]
    @affiliation = hash[:affiliation]
    @photo = hash[:photoUrl]
  end
end
