class Character
  attr_reader :id, :allies, :enemies, :name, :affiliation

  def initialize(hash)
    @id = hash[:_id]
    @allies = hash[:allies] # => array of strings
    @enemies = hash[:enemies] # => array of strings
    @name = hash[:name]
    @affiliation = hash[:affiliation]
  end
end
