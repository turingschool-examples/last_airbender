class Character
  attr_reader :name,
              :photoUrl,
              :allies,
              :enemies,
              :affiliation

  def initialize(info)
    @name = info[:name]
    @photoUrl = info[:photoUrl]
    @allies = info[:allies]
    @enemies = info[:enemies]
    @affiliation = info[:affiliation]
  end
end
