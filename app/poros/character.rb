class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(member_data)
    @name = member_data[:name]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @affiliation = member_data[:affiliation]
    @photo = member_data[:photoUrl]
  end
end
