class CharacterDetails
  attr_reader :allies,
              :enemies,
              :photo_url,
              :name,
              :affiliation

  def initialize(data)
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo_url = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end
